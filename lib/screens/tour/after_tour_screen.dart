import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/matched_controller.dart';
import 'package:food_signal/controllers/station_controller.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:food_signal/models/matched/matched_model.dart';
import 'package:food_signal/models/user/user_model.dart';
import 'package:get/get.dart';

class AfterTourScreen extends StatefulWidget {
  const AfterTourScreen({super.key});

  @override
  State<AfterTourScreen> createState() => _AfterTourScreenState();
}

class _AfterTourScreenState extends State<AfterTourScreen> {
  final StationController stationController = Get.put(StationController());
  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 100.h),
              Text(
                'How about here\nafter meal?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w600,
                  fontSize: 25.sp,
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                width: 307.w,
                height: 437.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1.6,
                    color: Color(0xffFF693A),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                          image: AssetImage(
                              'assets/images/${stationController.img.value}')),
                      SizedBox(height: 24.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            stationController.trip.value,
                            style: TextStyle(
                              color: Color(0xff0A0A0A),
                              fontWeight: FontWeight.w600,
                              fontSize: 23.sp,
                            ),
                          ),
                          Text(
                            stationController.address.value,
                            style: TextStyle(
                              color: Color(0xffB58271),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      AutoSizeText(
                        stationController.description.value,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xff4D4D4D),
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 48.h),
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
                    Get.offAllNamed('/color');
                  },
                  child: Text(
                    'Return Home',
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
