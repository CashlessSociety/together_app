import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oktoast/oktoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:together_app/utils/constants.dart';

class AvatarPicker extends StatefulWidget {
  final String fileKey;
  final Function(
    File uploadFile,
    String uploadFileKey,
  ) onUploaded;
  const AvatarPicker({
    Key? key,
    required this.onUploaded,
    required this.fileKey,
  }) : super(key: key);

  @override
  State<AvatarPicker> createState() => _AvatarPickerState();
}

class _AvatarPickerState extends State<AvatarPicker> {
  final ImagePicker imagePicker = ImagePicker();
  bool isUploading = false;
  File? uploadedFile;
  String uploadedFileKey = "";
  late StreamController<double> uploadStreamController;
  late Stream<double> uploadStream;

  void onCaptureImage() async {
    if (await Permission.camera.request().isGranted) {
      final XFile? image =
          await imagePicker.pickImage(source: ImageSource.camera);
      if (image != null) {
        onCropImage(image.path);
      }
    } else {
      showToast("Need camera access.");
      await Future.delayed(const Duration(milliseconds: 500));
      openAppSettings();
    }
  }

  void onPickImage() async {
    if (await Permission.photos.request().isGranted) {
      final XFile? image =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        onCropImage(image.path);
      }
    } else {
      showToast("Need photo library access.");
      await Future.delayed(const Duration(milliseconds: 500));
      openAppSettings();
    }
  }

  void onCropImage(String imagePath) async {
    File? croppedFile = await ImageCropper().cropImage(
      maxHeight: 512,
      maxWidth: 512,
      sourcePath: imagePath,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
      ],
      cropStyle: CropStyle.circle,
      androidUiSettings: AndroidUiSettings(
        toolbarTitle: 'Avatar Cropper',
        toolbarColor: kDeepBlue,
        toolbarWidgetColor: Colors.white,
        activeControlsWidgetColor: kPrimaryBlue,
        initAspectRatio: CropAspectRatioPreset.square,
        lockAspectRatio: true,
      ),
      iosUiSettings: const IOSUiSettings(
        title: 'Avatar Cropper',
        minimumAspectRatio: 1.0,
        aspectRatioLockEnabled: true,
        resetAspectRatioEnabled: false,
      ),
    );
    if (croppedFile != null) {
      onUploadFile(croppedFile);
    }
  }

  Future<void> onUploadFile(File imageFile) async {
    setState(() {
      isUploading = true;
      uploadedFile = null;
      uploadedFileKey = "";
    });
    String ramNum = "${Random().nextInt(89999) + 10000}";
    String currentTime = "${DateTime.now().toUtc().millisecondsSinceEpoch}";
    String extension = imageFile.path.split('.').last;
    String key = "$currentTime-$ramNum.$extension";
    try {
      final UploadFileResult result = await Amplify.Storage.uploadFile(
        local: imageFile,
        key: key,
        onProgress: (progress) {
          uploadStreamController.add(progress.getFractionCompleted());
        },
      );
      uploadStreamController.add(1.0);
      showToast("Upload Success");
      await Future.delayed(const Duration(milliseconds: 100));
      setState(() {
        isUploading = false;
        uploadedFile = imageFile;
        uploadedFileKey = result.key;
      });
      widget.onUploaded(
        uploadedFile!,
        uploadedFileKey,
      );
    } on StorageException catch (e) {
      showToast("Upload Error $e");
      setState(() {
        isUploading = true;
        uploadedFile = null;
        uploadedFileKey = "";
      });
    }
  }

  void onShowPickOptions() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Capture a new photo'),
                  onTap: () {
                    Navigator.pop(context);
                    onCaptureImage();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Pick one from gallery'),
                  onTap: () {
                    Navigator.pop(context);
                    onPickImage();
                  },
                ),
              ],
            ),
          );
        });
  }

  void onDownloadImage() async {
    if (widget.fileKey != "") {
      try {
        final File file = await DefaultCacheManager().getSingleFile(
          toCdnUrl(widget.fileKey),
        );
        setState(() {
          uploadedFile = file;
          uploadedFileKey = widget.fileKey;
        });
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  void initState() {
    uploadStreamController = StreamController();
    uploadStream = uploadStreamController.stream.asBroadcastStream();
    onDownloadImage();
    super.initState();
  }

  @override
  void dispose() {
    uploadStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onShowPickOptions();
        },
        child: Container(
            width: 130.w,
            height: 130.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1.w, color: Colors.grey),
            ),
            clipBehavior: Clip.hardEdge,
            child: uploadedFile == null
                ? isUploading
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder(
                            stream: uploadStream,
                            builder: (context, AsyncSnapshot<double> snapshot) {
                              double progress = 0.01;
                              if (snapshot.hasData && snapshot.data! >= 0.01) {
                                progress = snapshot.data!;
                              }
                              print("progress $progress");
                              return CircularProgressIndicator(
                                value: progress,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Colors.blue),
                                strokeWidth: 3.w,
                              );
                            },
                          ),
                          Text(
                            "Uploading",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                            ),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 30.w,
                          ),
                          Text(
                            "Upload Avatar",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                            ),
                          )
                        ],
                      )
                : Image.file(uploadedFile!)));
  }
}
