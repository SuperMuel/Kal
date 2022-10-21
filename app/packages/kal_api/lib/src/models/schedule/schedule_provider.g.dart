// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleProvider _$$_ScheduleProviderFromJson(Map<String, dynamic> json) =>
    _$_ScheduleProvider(
      id: json['id'] as String,
      title: json['title'] as String?,
      childrenScheduleProvidersIDs:
          (json['childrenScheduleProvidersIDs'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
      sourceSchedules: (json['sourceSchedules'] as List<dynamic>?)
              ?.map((e) => SourceSchedule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ScheduleProviderToJson(_$_ScheduleProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'childrenScheduleProvidersIDs': instance.childrenScheduleProvidersIDs,
      'sourceSchedules':
          instance.sourceSchedules.map((e) => e.toJson()).toList(),
    };
