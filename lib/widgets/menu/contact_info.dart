import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        buildContactInfo(
            title: 'Address',
            text: 'Station Street 5'),
        buildContactInfo(
            title: 'Country',
            text: 'Austria'),
        buildContactInfo(
            title: 'Email',
            text: 'tahahesham55@'),
        buildContactInfo(
            title: 'Mobile',
            text: '01094127524'),
        buildContactInfo(
            title: 'Website',
            text: 'my@website.com'),


      ],
    );
  }
  Widget buildContactInfo({required String title, required String text}) =>   Padding(
    
    padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          '$title',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
            '$text'
        )
      ],
    ),
  );

}
