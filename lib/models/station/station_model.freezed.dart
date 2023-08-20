// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StationModel _$StationModelFromJson(Map<String, dynamic> json) {
  return _StationModelData.fromJson(json);
}

/// @nodoc
mixin _$StationModel {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationModelCopyWith<StationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationModelCopyWith<$Res> {
  factory $StationModelCopyWith(
          StationModel value, $Res Function(StationModel) then) =
      _$StationModelCopyWithImpl<$Res, StationModel>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$StationModelCopyWithImpl<$Res, $Val extends StationModel>
    implements $StationModelCopyWith<$Res> {
  _$StationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StationModelDataCopyWith<$Res>
    implements $StationModelCopyWith<$Res> {
  factory _$$_StationModelDataCopyWith(
          _$_StationModelData value, $Res Function(_$_StationModelData) then) =
      __$$_StationModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_StationModelDataCopyWithImpl<$Res>
    extends _$StationModelCopyWithImpl<$Res, _$_StationModelData>
    implements _$$_StationModelDataCopyWith<$Res> {
  __$$_StationModelDataCopyWithImpl(
      _$_StationModelData _value, $Res Function(_$_StationModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_StationModelData(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StationModelData extends _StationModelData {
  _$_StationModelData({this.name}) : super._();

  factory _$_StationModelData.fromJson(Map<String, dynamic> json) =>
      _$$_StationModelDataFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'StationModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StationModelData &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StationModelDataCopyWith<_$_StationModelData> get copyWith =>
      __$$_StationModelDataCopyWithImpl<_$_StationModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StationModelDataToJson(
      this,
    );
  }
}

abstract class _StationModelData extends StationModel {
  factory _StationModelData({final String? name}) = _$_StationModelData;
  _StationModelData._() : super._();

  factory _StationModelData.fromJson(Map<String, dynamic> json) =
      _$_StationModelData.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_StationModelDataCopyWith<_$_StationModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
