// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'acclerometer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Acclerometer _$AcclerometerFromJson(Map<String, dynamic> json) {
  return _Acclerometer.fromJson(json);
}

/// @nodoc
class _$AcclerometerTearOff {
  const _$AcclerometerTearOff();

  _Acclerometer call(
      {required DateTime timestamp, required List<String> accelo}) {
    return _Acclerometer(
      timestamp: timestamp,
      accelo: accelo,
    );
  }

  Acclerometer fromJson(Map<String, Object?> json) {
    return Acclerometer.fromJson(json);
  }
}

/// @nodoc
const $Acclerometer = _$AcclerometerTearOff();

/// @nodoc
mixin _$Acclerometer {
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get accelo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcclerometerCopyWith<Acclerometer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcclerometerCopyWith<$Res> {
  factory $AcclerometerCopyWith(
          Acclerometer value, $Res Function(Acclerometer) then) =
      _$AcclerometerCopyWithImpl<$Res>;
  $Res call({DateTime timestamp, List<String> accelo});
}

/// @nodoc
class _$AcclerometerCopyWithImpl<$Res> implements $AcclerometerCopyWith<$Res> {
  _$AcclerometerCopyWithImpl(this._value, this._then);

  final Acclerometer _value;
  // ignore: unused_field
  final $Res Function(Acclerometer) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? accelo = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      accelo: accelo == freezed
          ? _value.accelo
          : accelo // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AcclerometerCopyWith<$Res>
    implements $AcclerometerCopyWith<$Res> {
  factory _$AcclerometerCopyWith(
          _Acclerometer value, $Res Function(_Acclerometer) then) =
      __$AcclerometerCopyWithImpl<$Res>;
  @override
  $Res call({DateTime timestamp, List<String> accelo});
}

/// @nodoc
class __$AcclerometerCopyWithImpl<$Res> extends _$AcclerometerCopyWithImpl<$Res>
    implements _$AcclerometerCopyWith<$Res> {
  __$AcclerometerCopyWithImpl(
      _Acclerometer _value, $Res Function(_Acclerometer) _then)
      : super(_value, (v) => _then(v as _Acclerometer));

  @override
  _Acclerometer get _value => super._value as _Acclerometer;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? accelo = freezed,
  }) {
    return _then(_Acclerometer(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      accelo: accelo == freezed
          ? _value.accelo
          : accelo // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Acclerometer implements _Acclerometer {
  const _$_Acclerometer({required this.timestamp, required this.accelo});

  factory _$_Acclerometer.fromJson(Map<String, dynamic> json) =>
      _$$_AcclerometerFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final List<String> accelo;

  @override
  String toString() {
    return 'Acclerometer(timestamp: $timestamp, accelo: $accelo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Acclerometer &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.accelo, accelo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(accelo));

  @JsonKey(ignore: true)
  @override
  _$AcclerometerCopyWith<_Acclerometer> get copyWith =>
      __$AcclerometerCopyWithImpl<_Acclerometer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AcclerometerToJson(this);
  }
}

abstract class _Acclerometer implements Acclerometer {
  const factory _Acclerometer(
      {required DateTime timestamp,
      required List<String> accelo}) = _$_Acclerometer;

  factory _Acclerometer.fromJson(Map<String, dynamic> json) =
      _$_Acclerometer.fromJson;

  @override
  DateTime get timestamp;
  @override
  List<String> get accelo;
  @override
  @JsonKey(ignore: true)
  _$AcclerometerCopyWith<_Acclerometer> get copyWith =>
      throw _privateConstructorUsedError;
}
