import 'package:flutter/material.dart';

class NavItem{
  final int id;
  final String icon;
  final Widget destination;

  NavItem({this.id, this.destination, this.icon});

  bool destinationChecker(){
    if(destination != null){
        return true;
      }
      return false;
    }
}