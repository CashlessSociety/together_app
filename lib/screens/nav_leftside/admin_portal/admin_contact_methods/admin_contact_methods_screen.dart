import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/components/text_fields.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_contact_methods/email_sender.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_contact_methods/sms_sender.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_contact_methods/whatsapp_sender.dart';
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
  String instagramPrefix = 'https://instagram.com/';
  String instagramUsername = '';
  String slackDeeplinkHttpsPrefix = 'https://slack.com/app_redirect?';
  String slackDeeplinkHttpsContent = '';
  String slackDeeplinkSlackPrefix = 'slack://';
  String slackDeeplinkSlackContent = '';
  String fbDeeplinkHttpsPrefix = 'https://www.facebook.com/';
  String fbDeeplinkHttpsContent = '';
  String fbDeeplinkFbPrefixAndroid = 'fb://page/';
  String fbDeeplinkFbPrefixIos = 'fb://profile/';
  String fbDeeplinkFbContent = '';

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

  void onSendWhatsapp() async {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) {
        return const WhatsappSender();
      },
    );
  }

  void onOpenTelegram() async {
    launch(telegramPrefix + telegramUsername);
  }

  void onOpenTwitter() async {
    launch(twitterPrefix + twitterUsername);
  }

  void onOpenInstagram() async {
    launch(instagramPrefix + instagramUsername);
  }

  void onOpenSlackDeeplinkHttps() async {
    String url = slackDeeplinkHttpsPrefix + slackDeeplinkHttpsContent;
    onOpenUrl(url);
  }

  void onOpenSlackDeeplinkSlack() async {
    String url = slackDeeplinkSlackPrefix + slackDeeplinkSlackContent;
    onOpenUrl(url);
  }

  void onOpenFacebookDeeplinkHttps() async {
    String url = fbDeeplinkHttpsPrefix + fbDeeplinkHttpsContent;
    onOpenUrl(url);
  }

  void onOpenFacebookDeeplinkFb() async {
    String url = Platform.isIOS
        ? fbDeeplinkFbPrefixIos
        : fbDeeplinkFbPrefixAndroid + fbDeeplinkFbContent;
    onOpenUrl(url);
  }

  void onOpenUrl(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      showToast('Unable to open');
    }
  }

  Widget buildDivider() {
    return Divider(
      color: Colors.grey,
      height: 30.w,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Test Contact Methods'),
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                        child: const Text('Email'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          onSendSms();
                        },
                        child: const Text('SMS'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          onSendWhatsapp();
                        },
                        child: const Text('Whatsapp'),
                      ),
                    ],
                  ),
                ),
                buildDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Telegram'),
                    SizedBox(
                      height: 80.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: OutlineTextField(
                              helperText: telegramPrefix + telegramUsername,
                              helperMaxLines: 2,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.w),
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
                            child: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                buildDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Twitter'),
                    SizedBox(
                      height: 80.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: OutlineTextField(
                              helperText: twitterPrefix + twitterUsername,
                              helperMaxLines: 2,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.w),
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
                            child: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                buildDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Instagram'),
                    SizedBox(
                      height: 80.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: OutlineTextField(
                              helperText: instagramPrefix + instagramUsername,
                              helperMaxLines: 2,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.w),
                              onChanged: (value) {
                                setState(() {
                                  instagramUsername = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20.w),
                          ElevatedButton(
                            onPressed: () {
                              onOpenInstagram();
                            },
                            child: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                buildDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Slack: Deeplink https://'),
                    SizedBox(
                      height: 80.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: OutlineTextField(
                              helperText: slackDeeplinkHttpsPrefix +
                                  slackDeeplinkHttpsContent,
                              helperMaxLines: 2,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.w),
                              onChanged: (value) {
                                setState(() {
                                  slackDeeplinkHttpsContent = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20.w),
                          ElevatedButton(
                            onPressed: () {
                              onOpenSlackDeeplinkHttps();
                            },
                            child: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Slack: Deeplink slack://'),
                    SizedBox(
                      height: 80.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: OutlineTextField(
                              helperText: slackDeeplinkSlackPrefix +
                                  slackDeeplinkSlackContent,
                              helperMaxLines: 2,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.w),
                              onChanged: (value) {
                                setState(() {
                                  slackDeeplinkSlackContent = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20.w),
                          ElevatedButton(
                            onPressed: () {
                              onOpenSlackDeeplinkSlack();
                            },
                            child: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                buildDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Facebook: Deeplink https://'),
                    SizedBox(
                      height: 80.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: OutlineTextField(
                              helperText: fbDeeplinkHttpsPrefix +
                                  fbDeeplinkHttpsContent,
                              helperMaxLines: 2,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.w),
                              onChanged: (value) {
                                setState(() {
                                  fbDeeplinkHttpsContent = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20.w),
                          ElevatedButton(
                            onPressed: () {
                              onOpenFacebookDeeplinkHttps();
                            },
                            child: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Facebook: Deeplink fb://'),
                    SizedBox(
                      height: 80.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: OutlineTextField(
                              helperText: Platform.isIOS
                                  ? fbDeeplinkFbPrefixIos
                                  : fbDeeplinkFbPrefixAndroid +
                                      fbDeeplinkFbContent,
                              helperMaxLines: 2,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.w),
                              onChanged: (value) {
                                setState(() {
                                  fbDeeplinkFbContent = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20.w),
                          ElevatedButton(
                            onPressed: () {
                              onOpenFacebookDeeplinkFb();
                            },
                            child: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                buildDivider(),
              ],
            ),
          ),
        ));
  }
}
