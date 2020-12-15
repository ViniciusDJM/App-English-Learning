import 'package:flutter/material.dart';
import 'package:meditation_app/model/cardMenu.dart';
import 'package:meditation_app/size_config.dart';
import 'package:meditation_app/widgets/categories.dart';
import 'package:meditation_app/screens/telaAlfabetica.dart';

import 'package:meditation_app/widgets/cardMenu.dart';

class Home extends StatelessWidget {
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
              itemBuilder: (context, index) => CardMenu(
                cardMenu: recipeBundles[index], // lista com os cards
                press: (){
                  //switch
                  if(recipeBundles[index].id == 1){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return TelaAlfabetica(); //DetailsScreen que leva para a tela das letras.
                  },),);}
                  else if(recipeBundles[index].id == 2){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return TelaAlfabetica(); // Retirei o DetailsScreen 2 pois era irrelevante ao que tu tava fazendo
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
