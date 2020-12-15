import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/back/apiActivities.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/barraInferior.dart';
import 'package:meditation_app/widgets/cardLetras.dart';
import 'package:meditation_app/screens/telaAtividade.dart';
import 'package:meditation_app/screens/telaInfo.dart';
import 'package:scoped_model/scoped_model.dart';

import 'telaInfo.dart';

class TelaAlfabetica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BarraInferior(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: kBlueLightColor,
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
                  Text(
                    "Escolha uma letra \ne comece a praticar!\n",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  //SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 5,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CardLetras(
                          title: "A",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ScopedModel<ApiActivities>(
                                  model: ApiActivities("https://vocabularyenglish.herokuapp.com/dictionary/a/verb",0),
                                  child: TelaInfo()
                              );
                            },),);
                          },
                        ),
                        CardLetras(
                          title: "B",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ScopedModel<ApiActivities>(
                                  model: ApiActivities("https://vocabularyenglish.herokuapp.com/dictionary/a/verb",0),
                                  child: TelaAtividade()
                              );
                            },),);
                          },
                        ),
                        CardLetras(
                          title: "C",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),
                        CardLetras(
                          title: "D",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),
                        CardLetras(
                          title: "E",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "F",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "G",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "H",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "I",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "J",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "K",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "L",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "M",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "N",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "O",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "P",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "Q",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "R",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "S",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "T",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),
                        CardLetras(
                          title: "U",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "V",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "X",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "W",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "Y",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),CardLetras(
                          title: "Z",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TelaAtividade();
                            },),);
                          },
                        ),
                      ],
                    ),
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
