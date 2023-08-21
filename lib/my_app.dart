import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/screens/chooseColor/color_screen.dart';
import 'package:food_signal/screens/home_screen.dart';
import 'package:food_signal/screens/matching/matching_screen.dart';
import 'package:food_signal/screens/meetColor/meet_color_screen.dart';
import 'package:food_signal/screens/onbording/onboarding_screen.dart';
import 'package:food_signal/screens/recommend/recommend_screen.dart';
import 'package:food_signal/screens/selectStation/select_station_screen.dart';
import 'package:food_signal/screens/tour/after_tour_screen.dart';
import 'package:food_signal/screens/tour/before_tour_screen.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => GetMaterialApp(
        title: 'Food Signal',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          fontFamily: 'Pretendard Variable',
          useMaterial3: true,
        ),
        initialRoute: '/onboarding',
        getPages: [
          GetPage(name: '/onboarding', page: () => OnboardingScreen()),
          GetPage(name: '/color', page: () => ColorScreen()),
          GetPage(name: '/selectStation', page: () => SelectStationScreen()),
          GetPage(name: '/recommend', page: () => RecommendScreen()),
          GetPage(name: '/matching', page: () => MatchingScreen()),
          GetPage(name: '/meetColor', page: () => MeetColorScreen()),
          GetPage(name: '/beforeTour', page: () => BeforeTourScreen()),
          GetPage(name: '/afterTour', page: () => AfterTourScreen()),
        ],
      ),
    );
  }
}
