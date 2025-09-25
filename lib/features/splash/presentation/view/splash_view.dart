import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_images.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(AppImages.noorSplashImage)),
    );
  }
}
