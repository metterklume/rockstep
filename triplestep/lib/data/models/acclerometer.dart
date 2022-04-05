import 'package:freezed_annotation/freezed_annotation.dart';

part 'acclerometer.freezed.dart';
part 'acclerometer.g.dart';

@freezed
class Acclerometer with _$Acclerometer {
  const factory Acclerometer({
    required DateTime timestamp,
    required List<String> accelo,
    required List<String> rotation,
  }) = _Acclerometer;

  factory Acclerometer.fromJson(Map<String, dynamic> json) =>
      _$AcclerometerFromJson(json);

  @override
  Map<String, dynamic> toJson() => {
        timestamp.toString(): accelo,
      };
}
