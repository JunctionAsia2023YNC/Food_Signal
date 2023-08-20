// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModelData.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get meetGender => throw _privateConstructorUsedError;
  String? get partner_uid => throw _privateConstructorUsedError;
  String? get station => throw _privateConstructorUsedError;
  String? get stationEng => throw _privateConstructorUsedError;
  List<dynamic>? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? uid,
      String? name,
      String? gender,
      String? meetGender,
      String? partner_uid,
      String? station,
      String? stationEng,
      List<dynamic>? description});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? meetGender = freezed,
    Object? partner_uid = freezed,
    Object? station = freezed,
    Object? stationEng = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      meetGender: freezed == meetGender
          ? _value.meetGender
          : meetGender // ignore: cast_nullable_to_non_nullable
              as String?,
      partner_uid: freezed == partner_uid
          ? _value.partner_uid
          : partner_uid // ignore: cast_nullable_to_non_nullable
              as String?,
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as String?,
      stationEng: freezed == stationEng
          ? _value.stationEng
          : stationEng // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelDataCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelDataCopyWith(
          _$_UserModelData value, $Res Function(_$_UserModelData) then) =
      __$$_UserModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid,
      String? name,
      String? gender,
      String? meetGender,
      String? partner_uid,
      String? station,
      String? stationEng,
      List<dynamic>? description});
}

/// @nodoc
class __$$_UserModelDataCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModelData>
    implements _$$_UserModelDataCopyWith<$Res> {
  __$$_UserModelDataCopyWithImpl(
      _$_UserModelData _value, $Res Function(_$_UserModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? meetGender = freezed,
    Object? partner_uid = freezed,
    Object? station = freezed,
    Object? stationEng = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_UserModelData(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      meetGender: freezed == meetGender
          ? _value.meetGender
          : meetGender // ignore: cast_nullable_to_non_nullable
              as String?,
      partner_uid: freezed == partner_uid
          ? _value.partner_uid
          : partner_uid // ignore: cast_nullable_to_non_nullable
              as String?,
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as String?,
      stationEng: freezed == stationEng
          ? _value.stationEng
          : stationEng // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserModelData extends _UserModelData {
  _$_UserModelData(
      {this.uid,
      this.name,
      this.gender,
      this.meetGender,
      this.partner_uid,
      this.station,
      this.stationEng,
      final List<dynamic>? description})
      : _description = description,
        super._();

  factory _$_UserModelData.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelDataFromJson(json);

  @override
  final String? uid;
  @override
  final String? name;
  @override
  final String? gender;
  @override
  final String? meetGender;
  @override
  final String? partner_uid;
  @override
  final String? station;
  @override
  final String? stationEng;
  final List<dynamic>? _description;
  @override
  List<dynamic>? get description {
    final value = _description;
    if (value == null) return null;
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModel(uid: $uid, name: $name, gender: $gender, meetGender: $meetGender, partner_uid: $partner_uid, station: $station, stationEng: $stationEng, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModelData &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.meetGender, meetGender) ||
                other.meetGender == meetGender) &&
            (identical(other.partner_uid, partner_uid) ||
                other.partner_uid == partner_uid) &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.stationEng, stationEng) ||
                other.stationEng == stationEng) &&
            const DeepCollectionEquality()
                .equals(other._description, _description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      name,
      gender,
      meetGender,
      partner_uid,
      station,
      stationEng,
      const DeepCollectionEquality().hash(_description));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelDataCopyWith<_$_UserModelData> get copyWith =>
      __$$_UserModelDataCopyWithImpl<_$_UserModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelDataToJson(
      this,
    );
  }
}

abstract class _UserModelData extends UserModel {
  factory _UserModelData(
      {final String? uid,
      final String? name,
      final String? gender,
      final String? meetGender,
      final String? partner_uid,
      final String? station,
      final String? stationEng,
      final List<dynamic>? description}) = _$_UserModelData;
  _UserModelData._() : super._();

  factory _UserModelData.fromJson(Map<String, dynamic> json) =
      _$_UserModelData.fromJson;

  @override
  String? get uid;
  @override
  String? get name;
  @override
  String? get gender;
  @override
  String? get meetGender;
  @override
  String? get partner_uid;
  @override
  String? get station;
  @override
  String? get stationEng;
  @override
  List<dynamic>? get description;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelDataCopyWith<_$_UserModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
