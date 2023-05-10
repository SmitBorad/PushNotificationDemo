import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivatech_interview/src/login_module/view/sign_up_screen.dart';
import 'package:vivatech_interview/utills/AppColors.dart';
import 'package:vivatech_interview/utills/AppStrings.dart';
import 'package:vivatech_interview/utills/commonWidget.dart';

import '../../../utills/textStyles.dart';
import 'login_screen.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Hello.tr, style: colorFFFFFFs22w600),
            const SizedBox(
              height: 5,
            ),
            Text(PleaseLogInForMoreExcitement.tr, style: colorFFFFFFs22w400),
            const Expanded(child: SizedBox()),
            commonColorButton(
                onTap: () {
                  Get.to(() => const LoginScreen());
                },
                name: Login.tr),
            const SizedBox(height: 20),
            commonColorButton(
                onTap: () {
                  Get.to(() => const SignUpScreen());
                },
                color: Colors.transparent,
                border: Border.all(color: color00B2FF),
                name: Signup.tr,
                style: color00B2FFs18w700),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}
