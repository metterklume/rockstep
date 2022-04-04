// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'droplet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Droplet _$DropletFromJson(Map<String, dynamic> json) {
  return _Droplet.fromJson(json);
}

/// @nodoc
class _$DropletTearOff {
  const _$DropletTearOff();

  _Droplet call(
      {@JsonKey(name: 'id') required String id,
      required List<Map<String, dynamic>> details,
      required bool permission}) {
    return _Droplet(
      id: id,
      details: details,
      permission: permission,
    );
  }

  Droplet fromJson(Map<String, Object?> json) {
    return Droplet.fromJson(json);
  }
}

/// @nodoc
const $Droplet = _$DropletTearOff();

/// @nodoc
mixin _$Droplet {
// ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get details => throw _privateConstructorUsedError;
  bool get permission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropletCopyWith<Droplet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropletCopyWith<$Res> {
  factory $DropletCopyWith(Droplet value, $Res Function(Droplet) then) =
      _$DropletCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      List<Map<String, dynamic>> details,
      bool permission});
}

/// @nodoc
class _$DropletCopyWithImpl<$Res> implements $DropletCopyWith<$Res> {
  _$DropletCopyWithImpl(this._value, this._then);

  final Droplet _value;
  // ignore: unused_field
  final $Res Function(Droplet) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? details = freezed,
    Object? permission = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DropletCopyWith<$Res> implements $DropletCopyWith<$Res> {
  factory _$DropletCopyWith(_Droplet value, $Res Function(_Droplet) then) =
      __$DropletCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      List<Map<String, dynamic>> details,
      bool permission});
}

/// @nodoc
class __$DropletCopyWithImpl<$Res> extends _$DropletCopyWithImpl<$Res>
    implements _$DropletCopyWith<$Res> {
  __$DropletCopyWithImpl(_Droplet _value, $Res Function(_Droplet) _then)
      : super(_value, (v) => _then(v as _Droplet));

  @override
  _Droplet get _value => super._value as _Droplet;

  @override
  $Res call({
    Object? id = freezed,
    Object? details = freezed,
    Object? permission = freezed,
  }) {
    return _then(_Droplet(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Droplet implements _Droplet {
  const _$_Droplet(
      {@JsonKey(name: 'id') required this.id,
      required this.details,
      required this.permission});

  factory _$_Droplet.fromJson(Map<String, dynamic> json) =>
      _$$_DropletFromJson(json);

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  final String id;
  @override
  final List<Map<String, dynamic>> details;
  @override
  final bool permission;

  @override
  String toString() {
    return 'Droplet(id: $id, details: $details, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Droplet &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality()
                .equals(other.permission, permission));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(permission));

  @JsonKey(ignore: true)
  @override
  _$DropletCopyWith<_Droplet> get copyWith =>
      __$DropletCopyWithImpl<_Droplet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DropletToJson(this);
  }
}

abstract class _Droplet implements Droplet {
  const factory _Droplet(
      {@JsonKey(name: 'id') required String id,
      required List<Map<String, dynamic>> details,
      required bool permission}) = _$_Droplet;

  factory _Droplet.fromJson(Map<String, dynamic> json) = _$_Droplet.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  String get id;
  @override
  List<Map<String, dynamic>> get details;
  @override
  bool get permission;
  @override
  @JsonKey(ignore: true)
  _$DropletCopyWith<_Droplet> get copyWith =>
      throw _privateConstructorUsedError;
}
