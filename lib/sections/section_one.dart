import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          gradient: LinearGradient(colors: [
        Colors.green,
        Colors.orange,
      ], stops: [
        0.5,
        1
      ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
      child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40, top: 50),
        child: SingleChildScrollView(
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
              const SizedBox(
                height: 4,
              ),
              spacer,
              const Text(
                'The FoodNerve App brings all the best free food for easy pick up around you. We believe that everyday with FoodNerve is hunger free.',
                style: TextStyle(color: Colors.white, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              spacer,
              const Image(
                image: AssetImage('assets/phone.png'),
                // height: 20,
                fit: BoxFit.cover,
              ),
              spacer,
              ElevatedButton(
                onPressed: () async {
                  const url =
                      'https://play.google.com/store/apps/details?id=com.foodnerveapp.food_nerve';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(45, 20, 45, 20),
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  'Download App',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
