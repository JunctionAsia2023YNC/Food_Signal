import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/progress_controller.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:food_signal/screens/onbording/widget/onboarding_button.dart';
import 'package:food_signal/screens/onbording/widget/onboarding_description.dart';
import 'package:food_signal/screens/onbording/widget/onboarding_my_gender.dart';
import 'package:food_signal/screens/onbording/widget/onboarding_name.dart';
import 'package:food_signal/screens/onbording/widget/onboarding_progress_bar.dart';
import 'package:food_signal/screens/onbording/widget/onboarding_your_gender.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Widget> pages = [
    OnboardingName(),
    OnboardingDescription(),
    OnboardingMyGender(),
    OnboardingYourGender(),
    // Add more pages here...
  ];

  @override
  Widget build(BuildContext context) {
    final ProgressController progressController = Get.put(ProgressController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              OnboardingProgressBar(),
              SizedBox(height: 105.h),
              pages[progressController.progress.value.floor()],
              SizedBox(height: 100.h),
              OnboardingButton(),
            ],
          ),
        ),
      ),
    );
  }
}
