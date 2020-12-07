import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiActivities extends Model{

  final String _url;
  int index;
  List words = [];

  ApiActivities(this._url,this.index);

  Future<List> getList() async{
    Map data = await _getData();
    words = data['words'];
    return words;
  }

  Future<Map> _getData() async {
    http.Response response = await http.get(_url);
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