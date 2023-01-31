import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_colors.dart';
import 'package:flutter_template/flavors.dart';

class AppTheme {
  /// Default constructor for Example [ThemeData]
  AppTheme(this._brightness);

  final Brightness _brightness;

  /// Exposes theme data to MaterialApp
  ThemeData get themeData {
    switch (F.appFlavor) {
      case Flavor.development:
        return ThemeData(brightness: _brightness).copyWith(
      colorScheme: _colorScheme(AppColors.primaryColor),
      useMaterial3: true,
    );
    case Flavor.production:
        return ThemeData(brightness: _brightness).copyWith(
      colorScheme: _colorScheme(Colors.blue),
      useMaterial3: true,
    );
      default:
      return ThemeData(brightness: _brightness).copyWith(
      colorScheme: _colorScheme(Colors.red),
      useMaterial3: true,
    );
    }
    
  }

  ColorScheme _colorScheme(Color color) => ColorScheme.fromSeed(
        seedColor: color,
        brightness: _brightness,
      );
}