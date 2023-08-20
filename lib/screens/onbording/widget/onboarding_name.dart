import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/progress_controller.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:get/get.dart';

class OnboardingName extends StatefulWidget {
  const OnboardingName({super.key});

  @override
  State<OnboardingName> createState() => _OnboardingNameState();
}

class _OnboardingNameState extends State<OnboardingName> {
  final nameController = TextEditingController();
  final ProgressController progressController = Get.put(ProgressController());
  final UserController userController = Get.put(UserController());

  @override
  void initState() {
    super.initState();
    // myController에 리스너 추가
    nameController.addListener(_printLatestValue);
  }

  // _MyCustomFormState가 제거될 때 호출
  @override
  void dispose() {
    // 텍스트에디팅컨트롤러를 제거하고, 등록된 리스너도 제거된다.
    nameController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print("Second text field: ${nameController.text}");
    if (nameController.text.isNotEmpty) {
      progressController.enableButton();
      userController.updateUserName(nameController.text);
    } else {
      progressController.disableButton();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '01',
            style: TextStyle(
              fontSize: 21.sp,
              fontWeight: FontWeight.w800,
              color: Color(0xffFFB7A1),
              height: 27.3.sp / 21.sp,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Enter your nickname',
            style: TextStyle(
              fontFamily: 'Pretendard Variable',
              fontSize: 23.sp,
              fontWeight: FontWeight.w600,
              height: 27.6.sp / 23.sp,
            ),
          ),
          SizedBox(height: 24.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: nameController,
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Nickname',
                  hintStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4D4D4D),
                    height: 23.4.sp / 18.sp,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffCCCCCC),
                      width: 2.4.w,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFF693A),
                      width: 2.4.w,
                    ),
                  ),
                ),
                onChanged: (value) {
                  // 유저의 이름을 업데이트한다.
                  // Get.find<UserController>().updateUserName(value);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
