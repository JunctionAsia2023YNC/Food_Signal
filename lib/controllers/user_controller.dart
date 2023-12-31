import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_service/firebase_service.dart';
import 'package:food_signal/controllers/auth_controller.dart';
import 'package:food_signal/models/user/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var userName = ''.obs;
  var userDescription = [].obs;
  var selectedMyGender = ''.obs;
  var selectedYourGender = ''.obs;
  var matched = false.obs;

  final FirestoreService _firestoreService = FirestoreService.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  UserModel userModel = UserModel();

  Future<void> addUser() {
    String uid = _firebaseFirestore.collection('user').doc().id;
    setUid(uid);

    return _firebaseFirestore
        .collection('user')
        .doc(uid)
        .set(userModel.toJson());
  }

  ///Set User Data
  Future<void> setUser(UserModel user) async {
    userModel = user;
    update();
  }

  Future<void> setUid(String uid) async {
    userModel = userModel.copyWith(uid: uid);
    update();
  }

  Future<void> setUserName() async {
    userModel = userModel.copyWith(name: userName.value);
    update();
  }

  Future<void> setGender(String gender) async {
    userModel = userModel.copyWith(gender: gender);
    update();
  }

  Future<void> setMeetGender(String meetGender) async {
    userModel = userModel.copyWith(meetGender: meetGender);
    update();
  }

  Future<void> setPartnerUid(String partnerUid) async {
    userModel = userModel.copyWith(partner_uid: partnerUid);
    update();
  }

  Future<void> setStation(String station) async {
    userModel = userModel.copyWith(station: station);
    update();
  }

  Future<void> setStationEng(String stationEng) async {
    userModel = userModel.copyWith(stationEng: stationEng);
    update();
  }

  Future<void> setDescription() async {
    userModel = userModel.copyWith(description: userDescription);
    update();
  }

  UserModel getUserModel() {
    return userModel;
  }

  Future<void> checkMatched() async {
    QuerySnapshot checkQuerySnapshot = await _firebaseFirestore
        .collection('user')
        .where('userName', isEqualTo: userName)
        .where('partner_uid', isNotEqualTo: null)
        .get();

    if (checkQuerySnapshot.docs.isNotEmpty) {
      matched.value = true;
    } else {
      matched.value = false;
    }
  }

  void updateUserName(String value) {
    userName.value = value;
  }

  void selectGender(String gender) {
    selectedMyGender.value = gender;
  }

  void selectYourGender(String gender) {
    selectedYourGender.value = gender;
  }
}
