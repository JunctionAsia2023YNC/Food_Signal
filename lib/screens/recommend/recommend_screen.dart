import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/station_controller.dart';

import 'package:get/get.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({super.key});

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> {
  final StationController stationController = Get.put(StationController());
  int randomIndex = 0;

  @override
  Widget build(BuildContext context) {
    Random random = Random();

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background-light-line1.png'),
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
                'Recommend Menu',
                style: TextStyle(
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w600,
                  fontSize: 25.sp,
                ),
              ),
              Text(
                'Near ${Get.arguments} station',
                style: TextStyle(
                  color: Color(0xffB58271),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 109.h),
              Container(
                width: 263.w,
                height: 126.h,
                decoration: BoxDecoration(
                  color: Color(0xffF8EFEC),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1.6,
                    color: Color(0xffFF693A),
                  ),
                ),
                child: Obx(
                  () => Center(
                    child: Text(
                      stationController.menuList[randomIndex],
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 240.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 127.w,
                    height: 54.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color(0xffFFB7A1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          side: BorderSide(
                            color: Color(0xffFF693A),
                            width: 2.0,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          randomIndex =
                              random.nextInt(stationController.menuList.length);
                        });
                      },
                      child: Text(
                        'Again',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xffFF693A),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 127.w,
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
                        Get.toNamed('/matching');
                      },
                      child: Text(
                        'Good',
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
            ],
          ),
        ),
      ),
    );
  }
}
