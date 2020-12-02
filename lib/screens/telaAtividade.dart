import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TelaAtividade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFF80CBC4),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF80CBC4),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    color: Colors.grey,
                    child: Text("Regular",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(color: Colors.white,fontSize: 25.0)
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Accept",
                    style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(fontWeight: FontWeight.w900,color: Colors.white)
                  ),
                  Text(
                      "(Aceitar,Receber)",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(color: Colors.white)
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 50.0,
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

