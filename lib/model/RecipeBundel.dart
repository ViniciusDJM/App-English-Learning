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
    chefs: 16,
    recipes: 95,
    title: "Exercite o seu inglês!",
    description: "Testes que vão literalmente de A até Z",
    imageSrc: "assets/images/teste5.png",
    color: Color(0xFFD82D40),
  ),
  RecipeBundle(
    id: 2,
    chefs: 8,
    recipes: 26,
    title: "Aprenda inglês em qualquer lugar!",
    description: "Estude todos os verbos!",
    imageSrc: "assets/images/teste6.png",
    color: Color(0xFF90AF17),
  ),

];
