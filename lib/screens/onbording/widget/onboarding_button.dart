import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/progress_controller.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:get/get.dart';

class OnboardingButton extends StatefulWidget {
  const OnboardingButton({super.key});

  @override
  State<OnboardingButton> createState() => _OnboardingButtonState();
}

class _OnboardingButtonState extends State<OnboardingButton> {
  final ProgressController progressController = Get.put(ProgressController());
  final UserController userController = Get.put(UserController());

  // @override
  // void initState() {
  //   super.initState();
  //   // myController에 리스너 추가
  //   userController.addListener(ableButton);
  // }

  // void ableButton() {
  //   if (userController.userDescription.length > 1) {
  //     progressController.enableButton();
  //   }
  //   if (userController.userDescription.length < 2) {
  //     progressController.disableButton();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 104.w,
              height: 50.h,
              child: ElevatedButton(
                  onPressed: (progressController.isButtonEnabled.value)
                      ? () {
                          if (progressController.progress.value == 0.0) {
                            userController.setUserName();
                          } else if (progressController.progress.value == 1.0) {
                            userController.setDescription();
                          } else if (progressController.progress.value == 3.0) {
                            Get.toNamed('/color');
                            userController.addUser();
                          }
                          final newProgress =
                              progressController.progress.value + 1.0;
                          if (newProgress <= 3.0) {
                            progressController.updateProgress(newProgress);
                            // progressController.disableButton();
                          }
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color(0xffFF693A),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Color(0xffFCFCFC),
                      height: 23.4.sp / 18.sp,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
