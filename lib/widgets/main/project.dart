import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/models/projects.dart';
import 'package:real_estate_app/responsive.dart';

class Projects extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
       Responsive(
           deskTop:  buildGridView(
               itemCount: demoProjects.length,
               crossAxisCount: 3,
               childAspectRatio: 0.75,
               itemBuilder:  (context, index)  =>buildProjectCard(demoProjects[index],context )),

           mobile:  buildGridView(
               itemCount: demoProjects.length,
               crossAxisCount: 1,
               childAspectRatio: 0.75,
               itemBuilder:(context, index)  =>buildProjectCard(demoProjects[index],context)
           ),
         tablet:  buildGridView(
             itemCount: demoProjects.length,
             crossAxisCount: MediaQuery.of(context).size.width <900 ? 2: 3,
             childAspectRatio: 0.75,
             itemBuilder:  (context, index)  =>buildProjectCard(demoProjects[index],context )),

         mobileLarge:  buildGridView(
             itemCount: demoProjects.length,
             crossAxisCount: 2,
             childAspectRatio: 0.75,
             itemBuilder:  (context, index)  =>buildProjectCard(demoProjects[index],context )),
       )
      ],
    );
  }

  Widget buildGridView({
  required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
}) => GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder:itemBuilder
  );


  Widget buildProjectCard( Project projectModel,context)=> Container(
    padding: EdgeInsets.all(kDefaultPadding),
    color: kSecondaryColor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage(
            projectModel.image!
          ),
          fit: BoxFit.cover,
        ),
        SizedBox(height: kDefaultPadding,),
        Text(
          projectModel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(height: kDefaultPadding,),

        Expanded(
          child: Text(
            projectModel.description!,

            style: TextStyle(
                height: 1.5
            ),

          ),
        ),
        SizedBox(height: kDefaultPadding,),
        TextButton(onPressed: (){}, child: Text(
          'More info >',
          style: TextStyle(
              color: kPrimaryColor
          ),
        ))
      ],
    ),
  );
}
