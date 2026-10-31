import 'package:clean_arch_training/core/configs/asset/app_vectors.dart';
import 'package:clean_arch_training/core/configs/theme/bloc/theme_cubit.dart';
import 'package:clean_arch_training/core/utils/app_style.dart';
import 'package:clean_arch_training/feature/choose_mode/presentation/widget/custom_constainer_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChooseMode extends StatelessWidget {
  const CustomChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                context.read<ThemeCubit>().selectTheme(ThemeMode.dark);
              },
              child: CustomContainerMode(svgIcon: AppVectors.moon),
            ),
            SizedBox(width: 71.w),
            InkWell(
              onTap: () {
                context.read<ThemeCubit>().selectTheme(ThemeMode.light);
              },
              child: CustomContainerMode(svgIcon: AppVectors.sun),
            ),
          ],
        ),
        SizedBox(height: 17.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dark Mode',
              style: AppStyle.smallTitle17400Gray.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 71.w),
            Text(
              'Light Mode',
              style: AppStyle.smallTitle17400Gray.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
