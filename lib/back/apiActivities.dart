import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiActivities extends Model{

  String url;
  int index;
  List words = [];

  ApiActivities(this.url,this.index);

  Future<List> getList() async{
    if(words.isEmpty){
      Map<String,dynamic> received = await _getData();
      words = received["words"];
    }
    return words;
  }

  Future<Map> _getData() async {
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

  Map getWord(){
    return words[index];
  }

  next(){
    index++;
    notifyListeners();
  }
}