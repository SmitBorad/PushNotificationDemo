import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivatech_interview/src/login_module/view/bording_screen.dart';
import 'package:vivatech_interview/utills/AppColors.dart';
import 'package:vivatech_interview/utills/textStyles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Get.offAll(() => const BoardingScreen());
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        'Splash Screen',
        style: colorFFFFFFs22w600,
      ),
    ));
  }
}
