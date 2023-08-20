import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class StationController extends GetxController {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  var selectedStation = ''.obs;
  var menuList = [].obs;

  // 1. station collection에서 필드 station_in과 selectedStation를 비교해서 같은 것을 찾음
  // 2. 같은 것을 찾으면 그 document의 List type인 menuList에 넣어줘야함

  Future<void> getMenuListForSelectedStation() async {
    // 1. station collection에서 필드 station_in과 selectedStation를 비교해서 같은 것을 찾음
    QuerySnapshot stationQuerySnapshot = await _firebaseFirestore
        .collection('station')
        .where('station_in', isEqualTo: selectedStation.value)
        .get();

    // 2. 같은 것을 찾으면 그 document의 List type인 menu의 값을 로컬 menuList에 넣어줘야함
    if (stationQuerySnapshot.docs.isNotEmpty) {
      DocumentSnapshot stationDocumentSnapshot = stationQuerySnapshot.docs[0];
      menuList.value = await stationDocumentSnapshot['menu'];

      // menuList를 활용하여 필요한 작업을 수행
      // 예를 들어, setState를 사용하여 화면에 표시하거나 다른 로직을 실행할 수 있음
      print(menuList);
    } else {
      print('No matching station found.');
    }
  }

  void setSelectedStaion(String value) {
    selectedStation.value = value;
  }
}
