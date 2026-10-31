import 'package:clean_arch_training/core/configs/asset/app_images.dart';
import 'package:clean_arch_training/core/configs/asset/app_vectors.dart';
import 'package:clean_arch_training/core/utils/app_style.dart';
import 'package:clean_arch_training/core/widget/app_background.dart';
import 'package:clean_arch_training/core/widget/primary_button.dart';
import 'package:clean_arch_training/feature/choose_mode/presentation/widget/custom_choose_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseModeView extends StatelessWidget {
  const ChooseModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppBackground(
          image: AppImages.chooseModeBg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 39.h),
              SvgPicture.asset(
                AppVectors.splashLogoDark,
                height: 59.h,
                width: 196.w,
              ),
              const Spacer(),
              Text(
                'Choose Mode',
                textAlign: TextAlign.center,
                style: AppStyle.bigTitle25boldWhite.copyWith(fontSize: 22.sp),
              ),
              SizedBox(height: 32.h),
              CustomChooseMode(),
              SizedBox(height: 68.h),
              PrimaryButton(onPressed: () {}, text: 'Continue'),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
