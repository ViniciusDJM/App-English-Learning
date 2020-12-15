import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget { // com pouca utilidade, talvez seja bom excluir ela.
  final Icon icon;
  final String text;
  final TextEditingController controller;

  const SearchBar(this.icon,this.text, this.controller,{
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          icon: icon,
        ),
        controller: controller,
      ),
    );
  }
}
