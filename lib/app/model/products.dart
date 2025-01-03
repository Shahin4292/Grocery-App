import 'package:flutter/material.dart';
import 'package:grocery_app/app/utils/app_assets.dart';

List<String> groceryCategories = [
  'ALL',
  'Fruit',
  'Vegetable',
  'Meat',
  'Dairy',
];

class Grocery {
  final String description, name, image, category;
  final double rate, price;
  final Color color;
  final bool isRecent;

  Grocery(
      {required this.category,
      required this.image,
      required this.description,
      required this.name,
      required this.rate,
      required this.color,
      required this.price,
      required this.isRecent});
}

List<Grocery> groceryItems = [
  Grocery(
    category: 'Fruit',
    image: AppAssets.orange,
    name: 'Orange Fruit',
    isRecent: false,
    price: 9.99,
    rate: 4.5,
    color: Colors.orange,
    description: description,
  ),
  Grocery(
    image: AppAssets.broccoli,
    category: 'Vegetable',
    name: 'Broccoli Vegetable',
    description: description,
    price: 10.9,
    rate: 4.0,
    isRecent: false,
    color: Colors.green,
  ),
  Grocery(
    category: 'Fruit',
    name: 'Apple Fruit',
    image: AppAssets.apple,
    price: 15.15,
    rate: 4.5,
    color: Colors.red,
    isRecent: false,
    description: description,
  ),
  Grocery(
    category: 'Vegetable',
    image: AppAssets.potato,
    description: description,
    name: 'Potato Vegetable',
    isRecent: false,
    rate: 3.5,
    color: Colors.brown,
    price: 9.9,
  ),
  Grocery(
    category: 'Vegetable',
    image: AppAssets.celery,
    color: Colors.lightGreenAccent,
    name: 'Celery Vegetable',
    isRecent: true,
    description: description,
    rate: 5.0,
    price: 11.0,
  ),
  Grocery(
    category: 'Vegetable',
    image: AppAssets.carrot,
    name: 'Carrot Vegetable',
    isRecent: true,
    description: description,
    price: 23.5,
    color: Colors.orange,
    rate: 3.5,
  ),
  Grocery(
    image: AppAssets.grape,
    name: 'Grape Fruit',
    category: 'Fruit',
    isRecent: false,
    color: Colors.redAccent,
    price: 20.7,
    rate: 4.0,
    description: description,
  ),
  Grocery(
    image: AppAssets.mango,
    name: 'Mango Fruit',
    category: 'Fruit ',
    color: Colors.redAccent,
    isRecent: false,
    price: 16.0,
    rate: 4.5,
    description: description,
  ),
  Grocery(
    category: 'Fruit',
    image: AppAssets.melon,
    isRecent: false,
    description: description,
    name: 'Melon Fruit',
    color: Colors.orangeAccent,
    rate: 3.9,
    price: 11.11,
  ),
  Grocery(
    category: 'Meat',
    image: AppAssets.paneerr,
    isRecent: false,
    description: description,
    name: 'KFC Chicken',
    color: Colors.orangeAccent,
    rate: 4.0,
    price: 20.0,
  ),
  Grocery(
    category: 'Dairy',
    image: AppAssets.chicken,
    isRecent: false,
    description: description,
    name: 'Paneer',
    color: Colors.pink,
    rate: 5.0,
    price: 15.5,
  ),
];
const description =
    "Are an essential part of a healthy diet, providing the body with a wide range of nutrients, vitamins, and minerals that are crucial for overall well-being. Apples, for example, are not only rich in dietary fiber, which aids digestion and promotes gut health, but they also contain antioxidants that help reduce the risk of chronic diseases. Regular consumption of apples can improve heart health, lower cholesterol levels, and contribute to better weight management";
