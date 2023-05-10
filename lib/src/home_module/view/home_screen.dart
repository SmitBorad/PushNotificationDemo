import 'package:flutter/material.dart';
import 'package:vivatech_interview/utills/textStyles.dart';

class HomeScreen extends StatelessWidget {
  final String user;

  const HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'USER : $user',
              style: colorFFFFFFs18w700,
            ),
            Text(
              'HomeScreen',
              style: colorFFFFFFs18w700,
            )
          ],
        ),
      ),
    );
  }
}
