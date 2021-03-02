import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'category.dart';

final categories = <Category>[
  Category(
    categoryName: 'Vocabulary',
    imageUrl: 'assets/indir.png',
    backgroundColor: Colors.lightBlue[800],
    icon: FontAwesomeIcons.fileWord,
    description: 'Practice questions from various chapters in Vocabulary',
  ),
  Category(
    imageUrl: 'assets/indir.png',
    categoryName: 'Listening',
    backgroundColor: Colors.deepOrangeAccent[100],
    icon: FontAwesomeIcons.phone,
    description: 'Practice questions from various chapters in Listening',
  ),
  Category(
    imageUrl: 'assets/indir.png',
    categoryName: 'Reading',
    backgroundColor: Colors.lightBlue[800],
    icon: FontAwesomeIcons.book,
    description: 'Practice questions from various chapters in Reading',
  ),
];
