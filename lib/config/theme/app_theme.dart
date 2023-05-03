import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be <0'),
        assert(selectedColor < colorList.length,
            'Selected color must be <= ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        appBarTheme: const AppBarTheme(centerTitle: false),
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
