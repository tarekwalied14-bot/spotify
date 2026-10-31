import 'package:clean_arch_training/core/configs/theme/dark_theme.dart';
import 'package:clean_arch_training/core/configs/theme/light_theme.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light => LightTheme.lightTheme;
  static ThemeData get dark => DarkTheme.darkTheme;
}
