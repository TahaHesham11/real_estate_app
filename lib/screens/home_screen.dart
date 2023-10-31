
import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widgets/menu/menu_side_section.dart';

class HomeScreen extends StatelessWidget {
  final Widget mainSection;
  const HomeScreen({Key? key,required this.mainSection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: Responsive.isDesktop(context) ? null : AppBar(
       leading: Builder(
         builder: (context)=>IconButton(
           onPressed: (){
             Scaffold.of(context).openDrawer();
           },
           icon: Icon(Icons.menu),
         ),
       ),
        elevation: 0.0,
        backgroundColor: kBgColor,
      ),

      drawer: SideMenuSection(),

      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1590.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenuSection()
                ),
                SizedBox(width: kDefaultPadding,),

                  Expanded(
                    flex: 7,
                    child: mainSection
                  ),

                SizedBox(width: kDefaultPadding,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
