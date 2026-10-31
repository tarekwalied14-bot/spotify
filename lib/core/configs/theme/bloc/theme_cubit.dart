import 'package:clean_arch_training/core/cache/cache_helper.dart';
import 'package:clean_arch_training/core/configs/theme/bloc/theme_state.dart';
import 'package:clean_arch_training/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: getInitialTheme()));
  static ThemeMode getInitialTheme() {
    // intial open App (once)
    final savedTheme = sl<CacheHelper>().getTheme();

    switch (savedTheme) {
      case 'light':
        return ThemeMode.light;

      case 'dark':
        return ThemeMode.dark;

      default:
        return ThemeMode.system;
    }
  }

  Future<void> selectTheme(ThemeMode theme) async {
    if (state.themeMode == theme) return;

    emit(ThemeState(themeMode: theme));

    await sl<CacheHelper>().saveTheme(theme.name);
  }
}
