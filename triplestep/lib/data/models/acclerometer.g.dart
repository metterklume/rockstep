// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acclerometer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Acclerometer _$$_AcclerometerFromJson(Map json) => _$_Acclerometer(
      timestamp: DateTime.parse(json['timestamp'] as String),
      accelo:
          (json['accelo'] as List<dynamic>).map((e) => e as String).toList(),
      rotation:
          (json['rotation'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AcclerometerToJson(_$_Acclerometer instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'accelo': instance.accelo,
      'rotation': instance.rotation,
    };
