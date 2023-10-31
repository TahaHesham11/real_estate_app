import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/widgets/menu/contact_info.dart';
import 'package:real_estate_app/widgets/menu/goals.dart';
import 'package:real_estate_app/widgets/menu/logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Logo(),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    SizedBox(height: kDefaultPadding,),
                    TextButton(onPressed: (){}, child: FittedBox(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/download.svg'),
                          SizedBox(width: kDefaultPadding /2 ,),
                          Text(
                            'Download Brochure',
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                    )
                    ),
                  Container(
                    margin: EdgeInsets.only(top: kDefaultPadding * 2 ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kSecondaryColor,

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){},
                          icon: SvgPicture.asset('assets/icons/linkedin.svg')),
                      IconButton(onPressed: (){},
                          icon: SvgPicture.asset('assets/icons/github.svg')),
                      IconButton(onPressed: (){},
                          icon: SvgPicture.asset('assets/icons/twitter.svg')),
                      IconButton(onPressed: (){},
                          icon: SvgPicture.asset('assets/icons/dribble.svg')),
                    ],
                  )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
