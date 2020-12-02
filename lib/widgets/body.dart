import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/model/RecipeBundel.dart';
import 'package:meditation_app/size_config.dart';
import 'package:meditation_app/widgets/categories.dart';
import 'package:meditation_app/screens/telaAlfabetica.dart';

import 'package:meditation_app/widgets/recipeBundelCard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        children: <Widget>[
          Categories(),
          Expanded(child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
            child: GridView.builder(
              itemCount: recipeBundles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                  SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                mainAxisSpacing: 20,
                crossAxisSpacing:
                SizeConfig.orientation == Orientation.landscape ? SizeConfig.defaultSize * 2 : 0,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (context, index) => RecipeBundelCard(
                recipeBundle: recipeBundles[index],

                press: (){
                  if(recipeBundles[index].id == 1){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DetailsScreen();
                  },),);}
                  else if(recipeBundles[index].id == 2){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DetailsScreen2();
                    },),);
                  }
                },
              ),
            ),
          )),
        ],
      ),

      );
  }
}
