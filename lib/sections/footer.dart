import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton.icon(
            onPressed: () {
              launchURL('https://wa.me/2348129976178');
            },
            icon: const Icon(
              Icons.whatsapp,
              color: Colors.white,
              size: 10,
            ),
            label: const Text(
              'Send us a whatsapp message',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchURL(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
