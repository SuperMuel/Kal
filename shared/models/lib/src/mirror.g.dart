// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirror.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mirror _$$_MirrorFromJson(Map<String, dynamic> json) => _$_Mirror(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      owner: json['owner'] as String?,
      liked: json['liked'] as bool? ?? false,
      subscribed: json['subscribed'] as bool? ?? false,
      public: json['public'] as bool? ?? false,
      likesCount: json['likesCount'] as int? ?? 0,
      subscribersCount: json['subscribersCount'] as int? ?? 0,
      creationDt: json['creationDt'] == null
          ? null
          : DateTime.parse(json['creationDt'] as String),
      lastModification: json['lastModification'] == null
          ? null
          : DateTime.parse(json['lastModification'] as String),
      rulesIDs: (json['rulesIDs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sourceSchedulesIDs: (json['sourceSchedulesIDs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MirrorToJson(_$_Mirror instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'owner': instance.owner,
      'liked': instance.liked,
      'subscribed': instance.subscribed,
      'public': instance.public,
      'likesCount': instance.likesCount,
      'subscribersCount': instance.subscribersCount,
      'creationDt': instance.creationDt?.toIso8601String(),
      'lastModification': instance.lastModification?.toIso8601String(),
      'rulesIDs': instance.rulesIDs,
      'sourceSchedulesIDs': instance.sourceSchedulesIDs,
    };
