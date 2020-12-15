import 'package:flutter/material.dart';

class RecipeBundle {
  final int id, feitos, faltantes;
  final String title, description, imageSrc;
  final Color color;

  RecipeBundle(
      {this.id,
        this.feitos,
        this.faltantes,
        this.title,
        this.description,
        this.imageSrc,
        this.color});
}

// Lista com todos os cards, passamos ela para a Home
List<RecipeBundle> recipeBundles = [
  RecipeBundle(
    id: 1,
    feitos: 1,
    faltantes: 9,
    title: "Aprenda + Verbos!!",
    description: "Amplie seu conhecimento",
    imageSrc: "assets/images/teste5.png",
    color: Color(0xFFD82D40),
  ),
  RecipeBundle(
    id: 2,
    feitos: 2,
    faltantes: 26,
    title: "Exercite os Verbos!",
    description: "Testes que vão literalmente de A até Z!",
    imageSrc: "assets/images/teste6.png",
    color: Color(0xFF90AF17),
  ),
  RecipeBundle(
    id: 3,
    feitos: 4,
    faltantes: 8,
    title: "Pratique os substantivos!",
    description: "Botão ainda não feito!",
    imageSrc: "assets/images/teste7.png",
    color: Color(0xFF1565C0),
  ),
  RecipeBundle(
    id: 4,
    feitos: 4,
    faltantes: 7,
    title: "Aprenda os substantivos!",
    description: "Botão ainda não feito!",
    imageSrc: "assets/images/teste9.png",
    color: Color(0xFFF57C00),
  ),

];
