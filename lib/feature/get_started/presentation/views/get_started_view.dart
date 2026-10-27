import 'package:clean_arch_training/core/configs/assets/app_images.dart';
import 'package:clean_arch_training/core/configs/routing/app_routes.dart';
import 'package:clean_arch_training/feature/get_started/presentation/widget/get_started_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.introBg),
                ),
              ),
              child: GetStartedContent(
                onGetStarted: () {
                  GoRouter.of(context).pushNamed(AppRoutes.chooseModeView);
                },
              ),
            ),
            IgnorePointer(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: .15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
