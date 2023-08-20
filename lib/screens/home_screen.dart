import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Onboarding Screen'),
          onPressed: () {
            Get.offAllNamed('/onboarding');
          },
        ),
      ),
    );
  }
}
