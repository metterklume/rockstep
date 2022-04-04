import 'package:freezed_annotation/freezed_annotation.dart';

part 'droplet.freezed.dart';
part 'droplet.g.dart';

@freezed
class Droplet with _$Droplet {
  const factory Droplet({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') required String id,
    required List<Map<String, dynamic>> details,
    required bool permission,
  }) = _Droplet;

  factory Droplet.fromJson(Map<String, dynamic> json) =>
      _$DropletFromJson(json);
}
