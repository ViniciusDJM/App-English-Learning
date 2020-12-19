import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';

class CardLetras extends StatelessWidget { // Onde está o tamanho dos cards e sua cor, provavelmente tu vai editar aqui

  final String svgSrc;
  final String title;
  final Function press;
  final bool active;

  const CardLetras({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    this.active
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: active ? Colors.redAccent : Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(
                          fontSize: 35,
                          color: active ? Colors.white : Colors.black54
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
