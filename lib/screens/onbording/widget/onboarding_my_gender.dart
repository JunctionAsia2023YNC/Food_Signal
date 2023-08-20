import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/progress_controller.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:get/get.dart';

class OnboardingMyGender extends StatefulWidget {
  const OnboardingMyGender({super.key});

  @override
  State<OnboardingMyGender> createState() => _OnboardingMyGenderState();
}

class _OnboardingMyGenderState extends State<OnboardingMyGender> {
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
            '03',
            style: TextStyle(
              fontSize: 21.sp,
              fontWeight: FontWeight.w800,
              color: Color(0xffFFB7A1),
              height: 27.3.sp / 21.sp,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Choose your gender',
            style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.w600,
              height: 27.6.sp / 23.sp,
            ),
          ),
          SizedBox(height: 24.h),
          Obx(
            () => Row(
              children: [
                SizedBox(
                  width: 72.w,
                  height: 42.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      backgroundColor:
                          (userController.selectedMyGender.value == 'male')
                              ? Color(0xffFDF2EE)
                              : Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color:
                              (userController.selectedMyGender.value == 'male')
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
                      userController.selectedMyGender('male');
                      userController.setGender('male');
                    },
                    child: Text(
                      'Male',
                      style: TextStyle(
                        color: (userController.selectedMyGender.value == 'male')
                            ? Color(0xffFF693A)
                            : Color(0xffB3B3B3),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        height: 22.1.sp / 17.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                SizedBox(
                  width: 90.w,
                  height: 42.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      backgroundColor:
                          (userController.selectedMyGender.value == 'female')
                              ? Color(0xffFDF2EE)
                              : Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: (userController.selectedMyGender.value ==
                                  'female')
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
                      userController.selectedMyGender('female');
                      userController.setGender('female');
                    },
                    child: Text(
                      'Female',
                      style: TextStyle(
                        color:
                            (userController.selectedMyGender.value == 'female')
                                ? Color(0xffFF693A)
                                : Color(0xffB3B3B3),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        height: 22.1.sp / 17.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
