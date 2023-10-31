import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Responsive.isMobileLarge(context) ? Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Expanded(
                child: buildIconInfo(
                    context: context,
                    icon: Icons.supervisor_account,
                    label: 'Clients',
                    text: '67+'),
              ),
              Expanded(
                child: buildIconInfo(
                    context: context,
                    icon: Icons.location_on,
                    label: 'projects',
                    text: '139'),
              ),

            ],
          ),
          SizedBox(height: kDefaultPadding *3,),
          Row(
            children: [
              Expanded(
                child: buildIconInfo(
                    context: context,
                    icon: Icons.public,
                    label: 'Countries',
                    text: '30'),
              ),
              Expanded(
                child: buildIconInfo(
                    context: context,
                    icon: Icons.star,
                    label: 'Stars',
                    text: '13k'),
              ),
            ],
          )
        ],
      ): Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          buildIconInfo(
              context: context,
              icon: Icons.supervisor_account,
              label: 'Clients',
              text: '67+'),
          buildIconInfo(
              context: context,
              icon: Icons.location_on,
              label: 'projects',
              text: '139'),
          buildIconInfo(
              context: context,
              icon: Icons.public,
              label: 'Countries',
              text: '30'),
          buildIconInfo(
              context: context,
              icon: Icons.star,
              label: 'Stars',
              text: '13k'),
        ],
      ),
    );
  }

  Widget buildIconInfo({
  required BuildContext  context,
  required IconData icon ,
  required String label,
  required String text,
  })=>  Column(
    children: [
      Icon(
        icon,
        size: 50.0,
      ),
      SizedBox(height: 10,),
      Text(
       text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color:kPrimaryColor,fontSize: 30.0
        ),
      ),
      Text(
        label,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
          fontSize: 25.0
        ),
      )
    ],
  );

}
