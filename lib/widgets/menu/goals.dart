import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/constans.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text('Goals',
          style: Theme.of(context).textTheme.subtitle2,),
        ),
        buildGoals(text: 'Planing stage'),
        buildGoals(text: 'Development '),
        buildGoals(text: 'Execution phase'),
        buildGoals(text: 'New way to living '),

      ],
    );
  }

 Widget buildGoals ({required String text}) =>  Padding(
   padding: const EdgeInsets.only(bottom: kDefaultPadding /2 ),
   child: Row(
     children: [
       SvgPicture.asset('assets/icons/check.svg'),
       SizedBox(width: kDefaultPadding / 2,),
       Text(
         '$text'
       )
     ],
   ),
 );

}
