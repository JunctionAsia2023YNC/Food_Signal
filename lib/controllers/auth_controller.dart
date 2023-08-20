// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_service/firebase_service.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthController extends GetxController {
//   final FirestoreService _firestoreService = FirestoreService.instance;
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   FirebaseAuth get auth => _auth;

//   final Rxn<User> firebaseUser = Rxn<User>();

//   @override
//   void onInit() {
//     super.onInit();
//     firebaseUser.bindStream(_auth.authStateChanges());
//   }

//   Future signInAnonymous() async {
//     try {
//       final userCredential = await _auth.signInAnonymously();
//       User? user = userCredential.user;
//       await FirebaseFirestore.instance.collection('user').doc(user!.uid).set({
//         'timestamp': FieldValue.serverTimestamp(),
//       });

//       print("Signed in with temporary account.");
//       return user.uid;
//     } on FirebaseAuthException catch (e) {
//       switch (e.code) {
//         case "operation-not-allowed":
//           print("Anonymous auth hasn't been enabled for this project.");
//           break;
//         default:
//           print("Unknown error. $e");
//       }
//     }
//   }

//   Future signOut() async {
//     try {
//       return await _auth.signOut();
//     } catch (e) {
//       return null;
//     }
//   }

//   // Future<void> addUserToDB(UserModel user) async {
//   //   try {
//   //     // var userMap = user.copyWith(creationDttm: DateTime.now()).toJson();
//   //     // userMap.addAll({'creationDttm': FieldValue.serverTimestamp()});
//   //     await _firestoreService.set(
//   //       path: FirestorePath.User(user.uid!),
//   //       data: user.toJson(),
//   //     );
//   //   } catch (e) {
//   //     await _firestoreService.addData(
//   //       path: FirestorePath.ErrLogs(),
//   //       data: {
//   //         'what': 'add user to db',
//   //         'log': e.toString(),
//   //         'date': DateTime.now()
//   //       },
//   //       id: 'lid',
//   //     );
//   //   }
//   // }
// }
