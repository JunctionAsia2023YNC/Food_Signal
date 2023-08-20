import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/progress_controller.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:get/get.dart';

class OnboardingDescription extends StatefulWidget {
  const OnboardingDescription({super.key});

  @override
  State<OnboardingDescription> createState() => _OnboardingDescriptionState();
}

class _OnboardingDescriptionState extends State<OnboardingDescription> {
  final ProgressController progressController = Get.put(ProgressController());
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '02',
            style: TextStyle(
              fontSize: 21.sp,
              fontWeight: FontWeight.w800,
              color: Color(0xffFFB7A1),
              height: 27.3.sp / 21.sp,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'What kind of person am I?\nChoose two words',
            style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.w600,
              height: 27.6.sp / 23.sp,
            ),
          ),
          SizedBox(height: 24.h),
          Obx(
            () => Column(
              children: [
                Row(
                  children: [
                    kindButtons('Chic', 71),
                    SizedBox(width: 8.w),
                    kindButtons('Active', 85),
                    SizedBox(width: 8.w),
                    kindButtons('Friendly', 98),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    kindButtons('Confident', 113),
                    SizedBox(width: 8.w),
                    kindButtons('Lovley', 87),
                    SizedBox(width: 8.w),
                    kindButtons('Quiet', 78),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    kindButtons('Funny', 83),
                    SizedBox(width: 8.w),
                    kindButtons('Attractive', 112),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    kindButtons('Independent', 135),
                    SizedBox(width: 8.w),
                    kindButtons('Curious', 96),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    kindButtons('Passionate', 121),
                    SizedBox(width: 8.w),
                    kindButtons('Charismatic', 129),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    kindButtons('Kind', 72),
                    SizedBox(width: 8.w),
                    kindButtons('Calm', 76),
                    SizedBox(width: 8.w),
                    kindButtons('Relaxed', 98),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget kindButtons(String kind, int width) {
    return SizedBox(
      width: width.w,
      height: 42.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          elevation: 0,
          backgroundColor: (userController.userDescription.contains(kind))
              ? Color(0xffFDF2EE)
              : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: (userController.userDescription.contains(kind))
                  ? Color(0xffFF693A)
                  : Color(0xffB3B3B3),
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
        onPressed: () {
          if (userController.userDescription.contains(kind)) {
            userController.userDescription.remove(kind);
          } else if (userController.userDescription.length < 2) {
            userController.userDescription.add(kind);
          }
          print(userController.userDescription);
        },
        child: Text(
          kind,
          style: TextStyle(
            color: (userController.userDescription.contains(kind))
                ? Color(0xffFF693A)
                : Color(0xffB3B3B3),
            fontWeight: FontWeight.w600,
            fontSize: 17.sp,
            height: 22.1.sp / 17.sp,
          ),
        ),
      ),
    );
  }
}
