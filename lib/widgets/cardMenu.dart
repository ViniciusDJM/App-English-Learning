import 'package:flutter/material.dart';
import 'package:meditation_app/model/cardMenu.dart';

import 'package:meditation_app/size_config.dart';

class CardMenu extends StatelessWidget {
  final RecipeBundle cardMenu;
  final Function press;

  const CardMenu({Key key, this.cardMenu, this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    // Now we dont this Aspect ratio
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: cardMenu.color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8), //18
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 1), //20
                child: Column( //colocar dois botoes e retirar os textos da atividade
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      cardMenu.title,
                      style: TextStyle(
                          fontSize: defaultSize * 2.0, //22
                          color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: defaultSize * 0.5,), // 5
                    Text(
                      cardMenu.description,
                      style: TextStyle(color: Colors.white54),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    buildInfoRow(
                      defaultSize * 0.2,
                      text: "${cardMenu.faltantes} Atv Completas",
                    ),
                    SizedBox(height: defaultSize * 0.2), //5
                    buildInfoRow(
                      defaultSize,
                      text: "${cardMenu.feitos} Atv Restantes",
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(width: defaultSize * 0.5), //5
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                cardMenu.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {String iconSrc, text}) {
    return Row(
      children: <Widget>[
        SizedBox(width: defaultSize), // 10
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
