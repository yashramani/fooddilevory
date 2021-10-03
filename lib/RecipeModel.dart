import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecipeModel {
  Image img_url;
  String name;
  String price;
  RecipeModel({this.img_url, this.name, this.price});
}

List recipeList = [
  RecipeModel(
      img_url: Image.asset('assets/recipe.png'),
      name: 'Manchurian',
      price: '100'),
  RecipeModel(
      img_url: Image.asset('assets/recipe.png'),
      name: 'PavBhaji',
      price: '150'),
  RecipeModel(
      img_url: Image.asset('assets/recipe.png'), name: 'Dhosa', price: '150'),
  RecipeModel(
      img_url: Image.asset('assets/recipe.png'),
      name: 'Panir Tikka',
      price: '200'),
];
