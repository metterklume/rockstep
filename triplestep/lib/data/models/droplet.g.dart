// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'droplet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Droplet _$$_DropletFromJson(Map json) => _$_Droplet(
      id: json['id'] as String,
      details: (json['details'] as List<dynamic>)
          .map((e) => Map<String, dynamic>.from(e as Map))
          .toList(),
      permission: json['permission'] as bool,
    );

Map<String, dynamic> _$$_DropletToJson(_$_Droplet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
      'permission': instance.permission,
    };
