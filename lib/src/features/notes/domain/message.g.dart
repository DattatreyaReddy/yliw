// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['recordId'] as String,
      groupId: json['groupId'] as String?,
      dateCreated: const EpochDateTimeConverter()
          .fromJson((json['dateCreated'] as num).toInt()),
      lastModified: const EpochDateTimeConverter()
          .fromJson((json['lastModified'] as num).toInt()),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'recordId': instance.id,
      'groupId': instance.groupId,
      'dateCreated':
          const EpochDateTimeConverter().toJson(instance.dateCreated),
      'lastModified':
          const EpochDateTimeConverter().toJson(instance.lastModified),
      'message': instance.message,
    };
