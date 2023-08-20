import 'package:freezed_annotation/freezed_annotation.dart';

part 'matched_model.freezed.dart';
part 'matched_model.g.dart';

@freezed
class MatchedModel with _$MatchedModel {
  MatchedModel._();
  @JsonSerializable(explicitToJson: true)
  factory MatchedModel({
    String? uid,
    String? name,
    String? gender,
    String? meetGender,
    String? partner_uid,
    String? station,
    String? stationEng,
    List<dynamic>? description,
  }) = _MatchedModelData;
  factory MatchedModel.fromJson(Map<String, dynamic> json) =>
      _$MatchedModelFromJson(json);
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
