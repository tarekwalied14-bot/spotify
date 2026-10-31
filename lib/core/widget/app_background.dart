import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final String image;
  final Widget child;

  const AppBackground({super.key, required this.image, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(image, fit: BoxFit.fill),
        Container(color: Colors.black.withValues(alpha: .15)),
        child,
      ],
    );
  }
}
