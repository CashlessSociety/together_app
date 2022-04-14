import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class WhatsappSender extends StatefulWidget {
  const WhatsappSender({Key? key}) : super(key: key);

  @override
  _WhatsappSenderState createState() => _WhatsappSenderState();
}

class _WhatsappSenderState extends State<WhatsappSender> {
  late TextEditingController _controllerPeople, _controllerMessage;
  String message = '';
  String phoneNumber = '';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  void dispose() {
    _controllerPeople.dispose();
    _controllerMessage.dispose();
    super.dispose();
  }

  Future<void> initPlatformState() async {
    _controllerPeople = TextEditingController();
    _controllerMessage = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp Example'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.people),
            title: TextField(
              controller: _controllerPeople,
              decoration: const InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.number,
              onChanged: (String value) => setState(() {
                phoneNumber = value;
              }),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: TextField(
              decoration: const InputDecoration(labelText: 'Message'),
              controller: _controllerMessage,
              onChanged: (String value) => setState(() {
                message = value;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Theme.of(context).colorScheme.secondary),
                padding: MaterialStateProperty.resolveWith(
                    (states) => const EdgeInsets.symmetric(vertical: 16)),
              ),
              onPressed: () {
                onLaunchWhatsapp();
              },
              child: const Text(
                'Open WhatsApp',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onLaunchWhatsapp() async {
    final link = WhatsAppUnilink(
      phoneNumber: phoneNumber,
      text: message,
    );
    await launch('$link');
  }
}
