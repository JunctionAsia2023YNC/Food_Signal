import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/progress_controller.dart';
import 'package:get/get.dart';

class OnboardingProgressBar extends StatelessWidget {
  const OnboardingProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ProgressController progressController = Get.put(ProgressController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 94),
      child: SliderTheme(
        data: SliderThemeData(
          activeTickMarkColor: const Color(0xffFF693A),
          inactiveTickMarkColor: const Color(0xffFFB7A1),
          activeTrackColor: const Color(0xffFF693A),
          inactiveTrackColor: const Color(0xffFFB7A1),
          thumbColor: const Color(0xffFF693A),
          tickMarkShape: const RoundSliderTickMarkShape(tickMarkRadius: 5.0),
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 5.0),
          trackHeight: 4.0.h,
        ),
        child: Slider(
          value: progressController.progress.value,
          onChanged: (double value) {},
          min: 0,
          max: 3,
          divisions: 3,
        ),
      ),
    );
  }
}
