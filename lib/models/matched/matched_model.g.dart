// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matched_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchedModelData _$$_MatchedModelDataFromJson(Map<String, dynamic> json) =>
    _$_MatchedModelData(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      meetGender: json['meetGender'] as String?,
      partner_uid: json['partner_uid'] as String?,
      station: json['station'] as String?,
      stationEng: json['stationEng'] as String?,
      description: json['description'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_MatchedModelDataToJson(_$_MatchedModelData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'gender': instance.gender,
      'meetGender': instance.meetGender,
      'partner_uid': instance.partner_uid,
      'station': instance.station,
      'stationEng': instance.stationEng,
      'description': instance.description,
    };
