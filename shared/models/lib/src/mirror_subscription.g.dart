// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirror_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MirrorSubscription _$$_MirrorSubscriptionFromJson(
        Map<String, dynamic> json) =>
    _$_MirrorSubscription(
      id: json['id'] as String,
      mirrorID: json['mirrorID'] as String,
      lastRefresh: json['lastRefresh'] == null
          ? null
          : DateTime.parse(json['lastRefresh'] as String),
      destinationCalendar: json['destinationCalendar'] == null
          ? null
          : DestinationCalendar.fromJson(
              json['destinationCalendar'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_MirrorSubscriptionToJson(
        _$_MirrorSubscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mirrorID': instance.mirrorID,
      'lastRefresh': instance.lastRefresh?.toIso8601String(),
      'destinationCalendar': instance.destinationCalendar?.toJson(),
      'error': instance.error,
    };
