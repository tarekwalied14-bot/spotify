import 'package:clean_arch_training/core/configs/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          Theme.of(context).brightness == Brightness.light
              ? AppImages.splashLogolight
              : AppImages.splashLogoDark,
        ),
      ),
    );
  }
}
