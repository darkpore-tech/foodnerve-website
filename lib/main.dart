import 'package:flutter/material.dart';
import 'package:foodnerve_website/sections/footer.dart';
import 'package:foodnerve_website/sections/section_three.dart';
import 'package:foodnerve_website/sections/section_two.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'sections/section_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FoodNerve',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ).copyWith(
          textTheme:
              GoogleFonts.questrialTextTheme(Theme.of(context).textTheme),
        ),
        home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(40.0),
            child: AppBar(
              // backgroundColor: Colors.white,
              title: const Text(
                'FoodNerve',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          // drawer: const Drawer(),
          body: SingleChildScrollView(
            child: Column(
              children: const [MyHomePage(), Section2(), Section3(), Footer()],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              launchURL('https://wa.me/2348129976178');
            },
            tooltip: 'WhatsApp Us',
            child: const Icon(
              Icons.whatsapp,
              color: Colors.white,
            ),
          ),
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
