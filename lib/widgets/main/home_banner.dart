import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 1.4 : 1.7,
    child: Stack(
      children: [
           Image(
            image: AssetImage(
            'assets/images/background.jpg',
          ),

          width: double.infinity,
          fit: BoxFit.cover,),

        Container(
          color: kBgColor.withOpacity(0.10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Build a greate future \n for all of us!',
                style: Responsive.isDesktop(context) ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold)
                    : Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold)

              ),
              SizedBox(height: kDefaultPadding,),
              ElevatedButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: Responsive.isDesktop(context) ? kDefaultPadding * 2 : 15,
                    vertical:Responsive.isDesktop(context) ? kDefaultPadding : 10,
                  ),
                  backgroundColor: kPrimaryColor,
                ),
                  onPressed: (){},
                  child: Text(
                    'Contact Us',
                    style: Responsive.isDesktop(context) ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white
                    ):Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white,
                  )
                  )
              )
            ],
          ),
        )

      ],
    ),
    )
    ;
  }
}
