import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/screens/home_screen.dart';
import 'package:real_estate_app/widgets/main/home_banner.dart';
import 'package:real_estate_app/widgets/main/icon_info.dart';
import 'package:real_estate_app/widgets/main/project.dart';
import 'package:real_estate_app/widgets/main/recommendation.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            SizedBox(height: kDefaultPadding,),
            Projects(),
            SizedBox(height: kDefaultPadding,),
            Recommendations()
          ],
        ),
      ),
    );
  }
}
