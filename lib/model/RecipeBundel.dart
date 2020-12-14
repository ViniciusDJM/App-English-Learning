import 'package:flutter/material.dart';

class RecipeBundle {
  final int id, chefs, recipes;
  final String title, description, imageSrc;
  final Color color;

  RecipeBundle(
      {this.id,
        this.chefs,
        this.recipes,
        this.title,
        this.description,
        this.imageSrc,
        this.color});
}

// Demo list
List<RecipeBundle> recipeBundles = [
  RecipeBundle(
    id: 1,
    chefs: 1,
    recipes: 9,
    title: "Aprenda + Verbos!!",
    description: "Amplie seu conhecimento",
    imageSrc: "assets/images/teste5.png",
    color: Color(0xFFD82D40),
  ),
  RecipeBundle(
    id: 2,
    chefs: 2,
    recipes: 26,
    title: "Exercite os Verbos!",
    description: "Testes que vão literalmente de A até Z!",
    imageSrc: "assets/images/teste6.png",
    color: Color(0xFF90AF17),
  ),
  RecipeBundle(
    id: 3,
    chefs: 4,
    recipes: 8,
    title: "Pratique os substantivos!",
    description: "Botão ainda não feito!",
    imageSrc: "assets/images/teste7.png",
    color: Color(0xFF1565C0),
  ),
  RecipeBundle(
    id: 4,
    chefs: 4,
    recipes: 7,
    title: "Aprenda os substantivos!",
    description: "Botão ainda não feito!",
    imageSrc: "assets/images/teste9.png",
    color: Color(0xFFF57C00),
  ),

];
