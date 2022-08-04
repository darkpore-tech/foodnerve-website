import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const Text(
          'We make access to food very easy',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        //bn
        const Image(
          image: AssetImage('assets/phone.png'),
          // height: 20,
          fit: BoxFit.cover,
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              shape: const StadiumBorder(),
              // ignore: prefer_const_constructors
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              textStyle:
                  const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              backgroundColor: Colors.white),
          onPressed: () {
            var url = "https://play.google.com";
            launchURL(url);
          },
          child: const Text(
            'Download App',
          ),
        ),
      ],
    ));
  }

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchURL(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
