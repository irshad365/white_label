// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
      isIncrementEnabled: json['isIncrementEnabled'] as bool,
      isDecrementtEnabled: json['isDecrementtEnabled'] as bool,
      isDoubleIncremetEnabled: json['isDoubleIncremetEnabled'] as bool,
    );

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
      'isIncrementEnabled': instance.isIncrementEnabled,
      'isDecrementtEnabled': instance.isDecrementtEnabled,
      'isDoubleIncremetEnabled': instance.isDoubleIncremetEnabled,
    };
