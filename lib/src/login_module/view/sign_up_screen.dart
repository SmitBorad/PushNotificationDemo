import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivatech_interview/utills/AppColors.dart';
import 'package:vivatech_interview/utills/AppStrings.dart';
import 'package:vivatech_interview/utills/commonWidget.dart';
import 'package:vivatech_interview/utills/textStyles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxString longitude = ''.obs;
  RxString latitude = ''.obs;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _invitationCode = TextEditingController();
  final TextEditingController _verificationCode = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
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
                      CommonIconButton(context, icon: Icons.arrow_back_ios_new,
                          onTap: () {
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
                  const SizedBox(height: 40),
                  CommonTextFeild(
                    controller: _email,
                    hintText: PleaseEnterYourID.tr,
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                  ),
                  const SizedBox(height: 15),
                  CommonTextFeild(
                      controller: _pass,
                      hintText: PleaseEnterYourPassword.tr,
                      validator: validatePassword,
                      isPass: true),
                  const SizedBox(height: 15),
                  CommonTextFeild(
                      hintText: PleaseEnterYourPasswordAgain.tr,
                      controller: _confirmPass,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ConfirmPasswordIsRequired.tr;
                        }
                        if (_confirmPass.text != _pass.text) {
                          return PasswordMismatch.tr;
                        }
                        return null;
                      },
                      isPass: true),
                  const SizedBox(height: 25),
                  commonColorButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                        } else {
                          if (kDebugMode) {
                            print('Invalid');
                          }
                        }
                      },
                      name: Signup.tr),
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
