import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_signal/controllers/station_controller.dart';
import 'package:get/get.dart';

import 'package:bottom_sheet_bar/bottom_sheet_bar.dart';

class SelectStationScreen extends StatefulWidget {
  const SelectStationScreen({super.key});

  @override
  State<SelectStationScreen> createState() => _SelectStationScreenState();
}

class _SelectStationScreenState extends State<SelectStationScreen> {
  bool _isLocked = false;
  bool _isCollapsed = true;
  bool _isExpanded = false;
  int _listSize = 3;
  final _bsbController = BottomSheetBarController();
  final _listSizeController = TextEditingController(text: '3');
  final StationController stationController = Get.put(StationController());

  @override
  void dispose() {
    _bsbController.removeListener(_onBsbChanged);
    super.dispose();
  }

  @override
  void initState() {
    _bsbController.addListener(_onBsbChanged);
    _listSizeController.addListener(_onListSizeChanged);
    super.initState();
  }

  void _onBsbChanged() {
    if (_bsbController.isCollapsed && !_isCollapsed) {
      setState(() {
        _isCollapsed = true;
        _isExpanded = false;
      });
    } else if (_bsbController.isExpanded && !_isExpanded) {
      setState(() {
        _isCollapsed = false;
        _isExpanded = true;
      });
    }
  }

  void _onListSizeChanged() {
    _listSize = int.tryParse(_listSizeController.text) ?? 3;
  }

  @override
  Widget build(BuildContext context) {
    final itemList2 = ['Seomyeon', 'Dongrae', 'Busan'];
    final assetList2 = [
      'assets/images/seomyeon_icon.png',
      'assets/images/donlae_icon.png',
      'assets/images/busan_icon.png',
      'assets/images/jagalchi_icon.png'
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          splashRadius: 20,
          icon: Icon(
            Icons.chevron_left,
            color: Color(0xff0A0A0A),
            size: 36,
          ),
        ),
        title: Text(
          'Select subway station',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff0A0A0A),
          ),
        ),
      ),
      body: BottomSheetBar(
        // backdropColor: Colors.green.withOpacity(0.8),
        height: 252.h,
        locked: _isLocked,
        controller: _bsbController,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
        borderRadiusExpanded: const BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
        boxShadows: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5.0,
            blurRadius: 32.0,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
        expandedBuilder: (scrollController) {
          final itemList = ['Seomyeon', 'Dongrae', 'Busan'];
          final assetList = [
            'assets/images/seomyeon_icon.png',
            'assets/images/donlae_icon.png',
            'assets/images/busan_icon.png',
          ];

          // Wrapping the returned widget with [Material] for tap effects
          return Material(
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 142.w),
                  child: Divider(
                    thickness: 4.w,
                    color: Color(0xffE0E0E0),
                  ),
                ),
                Text(
                  'Subway Station on Line 1',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff808080),
                  ),
                ),
                CustomScrollView(
                  controller: scrollController,
                  shrinkWrap: true,
                  slivers: [
                    SliverFixedExtentList(
                      itemExtent: 56.0, // I'm forcing item heights
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                              leading: Image(
                                  image: AssetImage('${assetList[index]}')),
                              title: Text(
                                itemList[index],
                                style: const TextStyle(fontSize: 20.0),
                              ),
                              onTap: () async {
                                stationController
                                    .selectedStation(itemList[index]);
                                await stationController
                                    .getMenuListForSelectedStation();
                                Get.toNamed('/recommend',
                                    arguments: itemList[index]);
                              }),
                        ),
                        childCount: _listSize,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        collapsed: Column(
          children: [
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 142.w),
              child: Divider(
                thickness: 4.w,
                color: Color(0xffE0E0E0),
              ),
            ),
            Text(
              'Subway Station on Line 1',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff808080),
              ),
            ),
            ListTile(
              leading: Image(image: AssetImage('${assetList2[0]}')),
              title: Text(
                itemList2[0],
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 8.h),
            ListTile(
              leading: Image(image: AssetImage('${assetList2[1]}')),
              title: Text(
                itemList2[1],
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 8.h),
            ListTile(
              leading: Image(image: AssetImage('${assetList2[2]}')),
              title: Text(
                itemList2[2],
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h),
          Container(
            width: 60.w,
            height: 32.h,
            decoration: BoxDecoration(
              color: Color(0xffFF693A),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Text(
                'line 1',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/map_line1.png'),
              width: 313.w,
              height: 327.h,
            ),
          )
        ],
      ),
    );
  }

  Widget lineTile() {
    return ListTile();
  }
}
