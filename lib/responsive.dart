import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  final Widget deskTop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget mobile;

  Responsive({
   required this.deskTop,
    this.tablet,
    this.mobileLarge,
   required this.mobile,
  });

  // اكبر او يساوي 1024 هيكون Desktop
  static bool isDesktop(context) {
    return MediaQuery.of(context).size.width >= 1024;
  }
// اصغر من 1024 هيكون isTablet
  static bool isTablet(context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  //اصغر او يساوي 700 هيكون isMobileLarge
  static bool isMobileLarge(context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  // اصغر او يساوي  500 هيكون isMobile
  static bool isMobile(context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    // دي بتجيب ليا حجم الشاشه بتاعتي وبعمل if عليها
    final Size size = MediaQuery.of(context).size;

    if(size.width >= 1024){
      return deskTop;
    }else if(size.width >= 700 && tablet != null){
      return tablet!;

    }else if(size.width >= 450 && mobileLarge != null){
      return mobileLarge!;
    }else{
      return mobile;
    }
  }
}
