import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/back/apiActivities.dart';
import 'package:scoped_model/scoped_model.dart';

class TelaInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: ScopedModelDescendant<ApiActivities>(
          builder: (context,child,model){
            return FutureBuilder(
                future: model.getList(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
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
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                        "Letra ${model.getWord()["verb"][0]}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1
                                            .copyWith(fontWeight: FontWeight.w900,color: Colors.white)
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Center(
                                    child: Card(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
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
                                                          .copyWith(color: Colors.white,fontSize: 20.0)
                                                  ),
                                                ),
                                              ),
                                              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                                            ),
                                            ListTile(
                                              leading: Icon(Icons.edit,size: 30.0,),
                                              title: Text(
                                                model.getWord()["verb"],
                                                style: TextStyle(fontSize: 30.0),
                                              ),
                                              subtitle: Text(
                                                model.getWord()["translate"],
                                                style: TextStyle(fontSize: 20.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Center(
                                    child: Card(
                                      child: ListTile(
                                        title: Text(
                                          'Past:',
                                          style: TextStyle(
                                              fontSize: 20.0
                                          ),
                                        ),
                                        subtitle: Text(
                                          model.getWord()["past"],
                                          style: TextStyle(
                                              fontSize: 20.0
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Center(
                                    child: Card(
                                      child: ListTile(
                                        title: Text(
                                          'Past Participle:',
                                          style: TextStyle(
                                              fontSize: 20.0
                                          ),
                                        ),
                                        subtitle: Text(
                                          model.getWord()["pastParticiple"],
                                          style: TextStyle(
                                              fontSize: 20.0
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Center(
                                    child: FlatButton(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 40.0,
                                        color: Color(0xFF80CBC4),
                                      ),
                                      onPressed: (){
                                        model.next();
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }else
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

