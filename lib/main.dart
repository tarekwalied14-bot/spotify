import 'package:clean_arch_training/core/configs/routing/app_router.dart';
import 'package:clean_arch_training/core/configs/theme/app_theme.dart';
import 'package:clean_arch_training/core/configs/theme/bloc/theme_cubit.dart';
import 'package:clean_arch_training/core/configs/theme/bloc/theme_state.dart';
import 'package:clean_arch_training/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(
    BlocProvider<ThemeCubit>(
      create: (context) => sl<ThemeCubit>(),
      child: SpotifyApp(),
    ),
  );
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              themeMode: state.themeMode,
              theme: AppTheme.light,
              darkTheme: AppTheme.dark,
              debugShowCheckedModeBanner: false,
              routerConfig: AppRouter.router,
            );
          },
        );
      },
    );
  }
}
