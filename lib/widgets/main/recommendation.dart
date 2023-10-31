import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/models/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendation',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: kDefaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                List.generate(

                    demoRecommendations.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding),
                child: buildRecommendationCart(context,demoRecommendations[index])
              ))

            ),
          )
        ],
      ),
    );
  }


  Widget buildRecommendationCart(context,Recommendation recommendationModel)=>Container(
    width: 400.0,
    color: kSecondaryColor,
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(
                  recommendationModel.image!
              ),
            ),
            title: Text(
                recommendationModel.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
                recommendationModel.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: kDefaultPadding /2 ,),
          Text(
              recommendationModel.text!,
              maxLines: 4,
              style: TextStyle(
                height: 1.5,
                overflow: TextOverflow.ellipsis,

              )
          )
        ],
      ),
    ),
  );
}
