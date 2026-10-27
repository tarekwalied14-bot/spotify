import 'package:clean_arch_training/core/configs/assets/app_vectors.dart';
import 'package:clean_arch_training/core/configs/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          Theme.of(context).brightness == Brightness.light
              ? AppVectors.splashLogolight
              : AppVectors.splashLogoDark,
        ),
      ),
    );
  }

  Future<void> _redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    GoRouter.of(context).pushReplacementNamed(AppRoutes.getStartedView);
  }
}
