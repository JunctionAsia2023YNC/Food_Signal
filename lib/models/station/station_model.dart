import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_model.freezed.dart';
part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  StationModel._();
  @JsonSerializable(explicitToJson: true)
  factory StationModel({
    String? name,
  }) = _StationModelData;
  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
