import 'package:flutter/material.dart';
import 'package:foodnerve_website/sections/footer.dart';
import 'package:foodnerve_website/sections/section_three.dart';
import 'package:google_fonts/google_fonts.dart';
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
          scaffoldBackgroundColor: Colors.green,
        ).copyWith(
          textTheme:
              GoogleFonts.questrialTextTheme(Theme.of(context).textTheme),
        ),
        home: Scaffold(
          // extendBodyBehindAppBar: true,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: AppBar(
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // do something
                  },
                )
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                'FoodNerve',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          // drawer: const Drawer(),
          body: SingleChildScrollView(
            child: Column(
              children: const [
                MyHomePage(),
                Section3(),
                Footer(),
              ],
            ),
          ),
        ));
  }
}
