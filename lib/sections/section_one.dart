import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var spacer = const SizedBox(
      height: 20,
    );
    return Container(
      height: screenSize.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/bgimg2.png"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You are sure of a meal',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
            spacer,
            const Text(
              'The FoodNerve App brings all the best free food for easy pick up around you. We believe that everyday with FoodNerve is hunger free',
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            spacer,
            const Text(
              'Download now!',
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
            // spacer,
            GestureDetector(
              onTap: () {
                launchURL('https://play.google.com/');
              },
              child: const Image(
                image: AssetImage('assets/gplay.png'),
                height: 40,
              ),
            ),
          ],
        ),
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
