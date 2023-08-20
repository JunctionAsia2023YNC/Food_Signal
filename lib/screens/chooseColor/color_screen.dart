import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:food_signal/models/user/user_model.dart';
import 'package:get/get.dart';

class ColorScreen extends StatefulWidget {
  ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    UserController userController = Get.find<UserController>();
    UserModel user = userController.getUserModel();
    Size size = MediaQuery.sizeOf(context);

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
                'Choose your signal color',
                style: TextStyle(
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w600,
                  fontSize: 23.sp,
                ),
              ),
              SizedBox(height: 72.h),
              Text(
                'Your signal card',
                style: TextStyle(
                  color: Color(0xffB58271),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                width: 255.w,
                height: 267.h,
                decoration: BoxDecoration(
                  color: Color(0xffF8EFEC),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1.6,
                    color: Color(0xffFF693A),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 32.h),
                    Image(
                      image: AssetImage('assets/images/redHeart.png'),
                      width: 100.w,
                      height: 100.h,
                    ),
                    SizedBox(height: 18.h),
                    Text(
                      user.name ?? 'Name',
                      style: TextStyle(
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 103.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            color: Color(0xffF8EFEC),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              width: 1.6,
                              color: Color(0xffFF693A),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              user.description![0].toString(),
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFF693A),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Container(
                          width: 103.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            color: Color(0xffF8EFEC),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              width: 1.6,
                              color: Color(0xffFF693A),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              user.description![1].toString(),
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFF693A),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 150.h),
              SizedBox(
                width: 263.w,
                height: 54.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color(0xffFF693A),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed('/selectStation');
                  },
                  child: Text(
                    'Match',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Color(0xffFCFCFC),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
