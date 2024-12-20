import 'package:flutter/material.dart';

const Color _customColor = Color(0XFF5C11D4);

/// List of color themes
/// 
/// The first color is a custom color
/// 
/// Gonzalo Quedena
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.red
];

/// AppTheme class
/// 
/// This class is used to create a theme with a selected color
/// 
/// Gonzalo Quedena
class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length - 1,
            "Colors must be between 0 and ${_colorThemes.length - 1}");

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
