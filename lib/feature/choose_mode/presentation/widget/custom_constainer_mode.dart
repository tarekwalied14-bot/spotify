import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerMode extends StatelessWidget {
  const CustomContainerMode({super.key, required this.svgIcon});
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: .5.sp, sigmaY: .5.sp),
        child: Container(
          height: 73.h,
          width: 73.w,
          decoration: BoxDecoration(
            color: Color(0xff30393C),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            svgIcon,
            height: 36.h,
            width: 36.w,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
