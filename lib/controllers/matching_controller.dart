import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_signal/controllers/station_controller.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:food_signal/models/user/user_model.dart';
import 'package:get/get.dart';

class MatchingController extends GetxController {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  StationController stationController = Get.put(StationController());
  UserController userController = Get.put(UserController());
//  UserController userController = Get.find<UserController>();

  // 1. matching collection에서 필드 stationEng과 selectedStation를 비교해서 같은 것을 찾음
  // 2. 같은 것을 찾으면 document의 array인 people, menu 안에 새로운 값들을 넣어야함
  Future<void> addValueToMatchingDocument() async {
    UserModel user = userController.getUserModel();
    // 1. matching collection에서 필드 stationEng과 selectedStation를 비교해서 같은 것을 찾음
    QuerySnapshot matchingQuerySnapshot = await _firebaseFirestore
        .collection('matching')
        .where('stationEng', isEqualTo: stationController.selectedStation.value)
        .get();

    if (matchingQuerySnapshot.docs.isNotEmpty) {
      // 2. 같은 것을 찾으면 document의 기존에 있던 array인 people, menu 안에 하나씩 새로운 값을 추가해야함
      DocumentSnapshot matchingDocumentSnapshot = matchingQuerySnapshot.docs[0];

      List<dynamic> currentPeople = matchingDocumentSnapshot['people'] ?? [];
      List<dynamic> currentMenu = matchingDocumentSnapshot['menu'] ?? [];

      // 새로운 값을 추가할 값으로 가정
      String newValueForPeople = user.uid!;
      String newValueForMenu = stationController.menu.value;

      // 기존 배열에 값을 추가하면서 중복을 허용함
      currentPeople.add(newValueForPeople);
      currentMenu.add(newValueForMenu);

      // Firestore 업데이트
      await _firebaseFirestore
          .collection('matching')
          .doc(matchingDocumentSnapshot.id)
          .update({
        'people': currentPeople,
        'menu': currentMenu,
      });

      print('Values added to matching document.');
    } else {
      print('No matching document found.');
    }
  }
}
