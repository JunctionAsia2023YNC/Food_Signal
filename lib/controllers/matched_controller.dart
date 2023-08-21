import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_signal/controllers/user_controller.dart';
import 'package:food_signal/models/matched/matched_model.dart';
import 'package:food_signal/models/user/user_model.dart';
import 'package:get/get.dart';

class MatchedController extends GetxController {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  MatchedModel userModel = MatchedModel();
  UserController userController = Get.find<UserController>();

  // Future<void> getMatchedUser() async {
  // 1. 내 uid로 나를 찾음
  // 2. 내 doc에 partner_uid를 찾음
  // 3. partner_uid로 matched doc를 찾음
  // 4. matched doc에서 내 uid로 상대 uid를 찯음
  // 5. 상대 uid로 상대 doc를 찾음
  // }

  Future<MatchedModel?> getMatchedUser() async {
    UserModel user = userController.getUserModel();
    String myUid = 'eDNme6YntRpwvko5boFk';
    // 1. 내 uid로 나를 찾음
    DocumentSnapshot myDocumentSnapshot =
        await _firebaseFirestore.collection('user').doc(myUid).get();

    // 2. 내 doc에 partner_uid를 찾음
    Map<String, dynamic> myData =
        myDocumentSnapshot.data() as Map<String, dynamic>;
    String? partnerUid = myData['partner_uid'] as String?;

    if (partnerUid != null) {
      // 3. partner_uid로 matched doc를 찾음
      DocumentSnapshot matchedDocumentSnapshot =
          await _firebaseFirestore.collection('matched').doc(partnerUid).get();

      if (matchedDocumentSnapshot.exists) {
        // 4. matched doc에서 내 uid로 상대 uid를 찾음
        String matchedPartnerUid =
            (matchedDocumentSnapshot.data() as Map<String, dynamic>)?['$myUid'];

        if (matchedPartnerUid != null) {
          // 5. 상대 uid로 상대 doc를 찾음
          DocumentSnapshot partnerDocumentSnapshot = await _firebaseFirestore
              .collection('user')
              .doc(matchedPartnerUid)
              .get();

          if (partnerDocumentSnapshot.exists) {
            Map<String, dynamic> partnerData =
                partnerDocumentSnapshot.data() as Map<String, dynamic>;
            print(partnerData);
            return MatchedModel.fromJson(partnerData); // UserModel을 적절하게 생성해야 함
          }
        }
      }
    }

    // 만약 모든 단계를 거치지 못하거나 문서가 존재하지 않는 경우 null을 반환할 수 있음
    return null;
  }

  MatchedModel getMatchedModel() {
    return userModel;
  }
}

// 1. 유저들이 생성됨
// 2. 매치를 원하는 유저들이 matching collection에 들어감, menu에 자기가 고른거, 자기 uid.
// 3. 매칭이 되면 매칭된 유저들은 matched collection에 들어감
// 4. 