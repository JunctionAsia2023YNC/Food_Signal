import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/matched_controller.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:food_signal/models/matched/matched_model.dart';
import 'package:food_signal/models/user/user_model.dart';
import 'package:get/get.dart';

class BeforeTourScreen extends StatefulWidget {
  const BeforeTourScreen({super.key});

  @override
  State<BeforeTourScreen> createState() => _BeforeTourScreenState();
}

class _BeforeTourScreenState extends State<BeforeTourScreen> {
  @override
  Widget build(BuildContext context) {
    UserController userController = Get.find<UserController>();
    MatchedController matchedController = Get.put(MatchedController());
    UserModel user = userController.getUserModel();

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background-main-line1.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150.h),
              Text(
                'Have a good time with\nyour Signal Mate:)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w600,
                  fontSize: 25.sp,
                ),
              ),
              SizedBox(height: 30.h),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 307.w,
                  height: 437.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFFB7A1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1.6,
                      color: Color(0xffFF693A),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Tap the Card!',
                style: TextStyle(
                  color: Color(0xffFF693A),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
