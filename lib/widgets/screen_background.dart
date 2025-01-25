import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg.png',
          height: Get.height,
          width: Get.width,
          fit: BoxFit.cover,
        ),
        SafeArea(child: child),
      ],
    );
  }
}
