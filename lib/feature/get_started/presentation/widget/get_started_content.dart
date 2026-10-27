import 'package:clean_arch_training/core/configs/assets/app_vectors.dart';
import 'package:clean_arch_training/core/utils/app_style.dart';
import 'package:clean_arch_training/core/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedContent extends StatelessWidget {
  const GetStartedContent({super.key, required this.onGetStarted});

  final VoidCallback onGetStarted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 37.h),
            child: SvgPicture.asset(
              AppVectors.splashLogoDark,
              height: 59.h,
              width: 196.w,
            ),
          ),
        ),
        const Spacer(),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Enjoy Listening To Music',
            style: AppStyle.bigTitle25boldWhite,
          ),
        ),
        SizedBox(height: 21.h),
        Text(
          'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Sagittis enim\n purus sed phasellus. Cursus ornare id\n scelerisque aliquam.',
          textAlign: TextAlign.center,
          style: AppStyle.smallTitle17400Gray,
        ),
        SizedBox(height: 37.h),
        PrimaryButton(onPressed: onGetStarted, text: 'Get started'),
        SizedBox(height: 40.h),
      ],
    );
  }
}
