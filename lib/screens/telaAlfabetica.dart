import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/back/apiActivities.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/screens/telaInfo.dart';
import 'package:meditation_app/widgets/cardLetras.dart';
import 'package:meditation_app/size_config.dart';
import 'package:scoped_model/scoped_model.dart';

class TelaAlfabetica extends StatefulWidget {

  final String typeVocabulary;

  TelaAlfabetica(this.typeVocabulary);

  @override
  _TelaAlfabeticaState createState() => _TelaAlfabeticaState(typeVocabulary);
}

class _TelaAlfabeticaState extends State<TelaAlfabetica> {

  List<String> chosen = [];
  List<String> options;
  String typeVocabulary;

  _TelaAlfabeticaState(this.typeVocabulary){
    if(typeVocabulary == 'verb')
      options = lettersVerbs;
    else if (typeVocabulary == 'noun')
      options = letters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: FlatButton(
          onPressed: () async {
            String search = chosen.join(',');
            String accessApi = "${url}${typeVocabulary}?search=$search&type=${typeVocabulary}";
            print(url);
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ScopedModel<ApiActivities>(
                  model: ApiActivities(accessApi,0),
                  child: TelaInfo()
              );
            },),);
          },
          child: Icon(Icons.play_circle_filled,color: Colors.green,size: 60.0,)
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Letra(s) para praticar\n",
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(fontWeight: FontWeight.w900, fontSize: 30.0),
              ),
              //SearchBar(),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 5,
                  childAspectRatio: .85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: options.map<Widget>((letter){
                    return CardLetras(
                      title: "${letter.toUpperCase()}",
                      active: chosen.contains(letter),
                      press: () {
                        if(chosen.contains(letter)){
                          setState(() {
                            chosen.remove(letter);
                          });
                        }else{
                          setState(() {
                            chosen.add(letter);
                          });
                        }
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() { //O app bar que eu descrevi la em cima
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Image.asset("assets/images/logo4.png"),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        SizedBox(
          // It means 5 because by out defaultSize = 10
          width: SizeConfig.defaultSize * 0.5,
        )
      ],
    );
  }
}
