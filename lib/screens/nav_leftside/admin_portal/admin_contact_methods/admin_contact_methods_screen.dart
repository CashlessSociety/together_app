import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:together_app/components/text_fields.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_contact_methods/email_sender.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_contact_methods/sms_sender.dart';
import 'package:url_launcher/url_launcher.dart';

class AdminContactMethodsScreen extends StatefulWidget {
  static String routeName = "/admin_contact_methods_screen";
  const AdminContactMethodsScreen({Key? key}) : super(key: key);

  @override
  State<AdminContactMethodsScreen> createState() =>
      _AdminContactMethodsScreenState();
}

class _AdminContactMethodsScreenState extends State<AdminContactMethodsScreen> {
  String telegramPrefix = 'https://t.me/';
  String telegramUsername = '';
  String twitterPrefix = 'https://twitter.com/';
  String twitterUsername = '';

  void onSendEmail() async {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) {
        return const EmailSender();
      },
    );
  }

  void onSendSms() async {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) {
        return const SmsSender();
      },
    );
  }

  void onOpenTelegram() async {
    launch(telegramPrefix + telegramUsername);
  }

  void onOpenTwitter() async {
    launch(twitterPrefix + twitterUsername);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test Contact Methods'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 45.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        onSendEmail();
                      },
                      child: const Text('Send email'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        onSendSms();
                      },
                      child: const Text('Send SMS'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              SizedBox(
                height: 70.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: OutlineTextField(
                        helperText: telegramPrefix + telegramUsername,
                        helperMaxLines: 2,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                        onChanged: (value) {
                          setState(() {
                            telegramUsername = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.w),
                    ElevatedButton(
                      onPressed: () {
                        onOpenTelegram();
                      },
                      child: const Text('Telegram'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              SizedBox(
                height: 70.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: OutlineTextField(
                        helperText: twitterPrefix + twitterUsername,
                        helperMaxLines: 2,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                        onChanged: (value) {
                          setState(() {
                            twitterUsername = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.w),
                    ElevatedButton(
                      onPressed: () {
                        onOpenTwitter();
                      },
                      child: const Text('Twitter'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
