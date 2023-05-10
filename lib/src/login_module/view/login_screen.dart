import 'dart:developer';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivatech_interview/src/home_module/view/home_screen.dart';
import 'package:vivatech_interview/utills/AppColors.dart';
import 'package:vivatech_interview/utills/AppStrings.dart';
import 'package:vivatech_interview/utills/textStyles.dart';
import '../../../utills/commonWidget.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _email = TextEditingController();

/*
  RxBool saveInfo = true.obs;
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonIconButton(context,
                            icon: Icons.arrow_back_ios_new, onTap: () {
                          Get.back();
                        }),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Text(Hello.tr, style: colorFFFFFFs22w600),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(PleaseLogInForMoreExcitement.tr,
                        style: colorFFFFFFs22w400),
                    const SizedBox(height: 80),
                    CommonTextFeild(
                        controller: _email,
                        hintText: PleaseEnterYourID.tr,
                        validator: validateEmail),
                    const SizedBox(height: 15),
                    CommonTextFeild(
                        controller: _pass,
                        isPass: true,
                        hintText: PleaseEnterYourPassword.tr,
                        validator: validatePassword),
                    const SizedBox(height: 50),
                    commonColorButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Get.offAll(() => HomeScreen(
                                  user: _email.text,
                                ));
                          }
                        },
                        name: Login.tr),
                    const SizedBox(height: 40),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: dontHave.tr,
                            style: colorFFFFFFs17w400,
                            children: [
                              TextSpan(
                                  text: Signup.tr,
                                  style: color00B2FFs16w700,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.to(() => const SignUpScreen());
                                    }),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
