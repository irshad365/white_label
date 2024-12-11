import 'package:json_annotation/json_annotation.dart';

part 'feature.g.dart';

@JsonSerializable()
class Feature {
  final bool isIncrementEnabled;
  final bool isDecrementtEnabled;
  final bool isDoubleIncremetEnabled;

  Feature(
      {required this.isIncrementEnabled,
      required this.isDecrementtEnabled,
      required this.isDoubleIncremetEnabled});

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);
  Map<String, dynamic> toJson() => _$FeatureToJson(this);
}

Map<String, dynamic> getMockJson(int input) {
  switch (input) {
    case 1:
      return {
        'isIncrementEnabled': true,
        'isDecrementtEnabled': true,
        'isDoubleIncremetEnabled': true,
      };
    case 2:
      return {
        'isIncrementEnabled': true,
        'isDecrementtEnabled': true,
        'isDoubleIncremetEnabled': false,
      };
    case 3:
      return {
        'isIncrementEnabled': true,
        'isDecrementtEnabled': false,
        'isDoubleIncremetEnabled': false,
      };
    default:
      return {
        'isIncrementEnabled': true,
        'isDecrementtEnabled': false,
        'isDoubleIncremetEnabled': false,
      };
  }
}
