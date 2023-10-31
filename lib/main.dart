
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/screens/home_screen.dart';
//import 'dart:ui_web';

import 'package:real_estate_app/widgets/main/main_section.dart';
void main() {

  //debugEmulateFlutterTesterEnvironment;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor:kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white).copyWith(
          bodyText1: TextStyle(color: kBodyTextColor,),
              bodyText2: TextStyle(color: kBodyTextColor),
        )
      ),

      home: MainSection()
    );
  }
}

