import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/back/apiActivities.dart';
import 'package:meditation_app/widgets/search_bar.dart';
import 'package:scoped_model/scoped_model.dart';

class TelaAtividade extends StatefulWidget {
  @override
  _TelaAtividadeState createState() => _TelaAtividadeState();
}

class _TelaAtividadeState extends State<TelaAtividade> {

  final pastController = TextEditingController();
  final pastParticipleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: ScopedModelDescendant<ApiActivities>(
          builder: (context, child, model){
            return FutureBuilder<List>(
                future: model.getList(),
                builder: (context, snapshot){
                  if(snapshot.hasData)
                    return SingleChildScrollView(
                      child: Stack(
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
                                    color:
                                    model.getWord()["pastParticiple"] == model.getWord()["past"] ?
                                    Colors.grey : Colors.redAccent,
                                    child: Text(
                                        model.getWord()["pastParticiple"] == model.getWord()["past"] ?
                                        "Regular" : "Irregular",
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
                                      model.getWord()['verb'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .display1
                                          .copyWith(fontWeight: FontWeight.w900,color: Colors.white)
                                  ),
                                  Text(
                                      "(${model.getWord()['translate']})",
                                      style: Theme.of(context)
                                          .textTheme
                                          .display1
                                          .copyWith(color: Colors.white,fontSize: 25.0),
                                  ),
                                  SizedBox(
                                    height: 50.0,
                                  ),
                                  SearchBar(Icon(Icons.edit), "Past", pastController),
                                  SearchBar(Icon(Icons.edit), "Past Participle", pastParticipleController),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Center(
                                    child: FlatButton(
                                      child: Icon(
                                        Icons.check_circle_outline,
                                        size: 40.0,
                                        color: Color(0xFF80CBC4),
                                      ),
                                      onPressed: (){
                                        model.next();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  else
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                }
            );
          }
      ),
    );
  }
  
}


