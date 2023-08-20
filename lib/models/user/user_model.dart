import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_signal/models/model_function.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  UserModel._();
  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    String? uid,
    String? name,
    String? gender,
    String? meetGender,
    String? partner_uid,
    String? station,
    String? stationEng,
    List<dynamic>? description,
  }) = _UserModelData;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
