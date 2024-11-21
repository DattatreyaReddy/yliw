// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayBoxImpl _$$DayBoxImplFromJson(Map<String, dynamic> json) => _$DayBoxImpl(
      id: (json['boxNumber'] as num).toInt(),
      date: const EpochDateTimeConverter()
          .fromJson((json['date'] as num).toInt()),
      boxStatus: $enumDecode(_$BoxStatusEnumMap, json['boxStatus']),
      weekNumber: (json['weekNumber'] as num).toInt(),
      yearNumber: (json['yearNumber'] as num).toInt(),
      hasLandMark: json['hasLandMark'] as bool? ?? false,
    );

Map<String, dynamic> _$$DayBoxImplToJson(_$DayBoxImpl instance) =>
    <String, dynamic>{
      'boxNumber': instance.id,
      'date': const EpochDateTimeConverter().toJson(instance.date),
      'boxStatus': _$BoxStatusEnumMap[instance.boxStatus]!,
      'weekNumber': instance.weekNumber,
      'yearNumber': instance.yearNumber,
      'hasLandMark': instance.hasLandMark,
    };

const _$BoxStatusEnumMap = {
  BoxStatus.unknown: 'UNKNOWN',
  BoxStatus.ideal: 'IDEAL',
  BoxStatus.goodEnjoyment: 'GOOD_ENJOYMENT',
  BoxStatus.notGreatEnjoyment: 'NOT_GREAT_ENJOYMENT',
  BoxStatus.goodImprovement: 'GOOD_IMPROVEMENT',
  BoxStatus.notGreatImprovement: 'NOT_GREAT_IMPROVEMENT',
  BoxStatus.failure: 'FAILURE',
};

_$WeekBoxImpl _$$WeekBoxImplFromJson(Map<String, dynamic> json) =>
    _$WeekBoxImpl(
      id: (json['boxNumber'] as num).toInt(),
      startDate: const EpochDateTimeConverter()
          .fromJson((json['startDate'] as num).toInt()),
      endDate: const EpochDateTimeConverter()
          .fromJson((json['endDate'] as num).toInt()),
      boxStatus: $enumDecode(_$BoxStatusEnumMap, json['boxStatus']),
      yearNumber: (json['yearNumber'] as num).toInt(),
      hasLandMark: json['hasLandMark'] as bool? ?? false,
    );

Map<String, dynamic> _$$WeekBoxImplToJson(_$WeekBoxImpl instance) =>
    <String, dynamic>{
      'boxNumber': instance.id,
      'startDate': const EpochDateTimeConverter().toJson(instance.startDate),
      'endDate': const EpochDateTimeConverter().toJson(instance.endDate),
      'boxStatus': _$BoxStatusEnumMap[instance.boxStatus]!,
      'yearNumber': instance.yearNumber,
      'hasLandMark': instance.hasLandMark,
    };

_$YearBoxImpl _$$YearBoxImplFromJson(Map<String, dynamic> json) =>
    _$YearBoxImpl(
      id: (json['boxNumber'] as num).toInt(),
      startDate: const EpochDateTimeConverter()
          .fromJson((json['startDate'] as num).toInt()),
      endDate: const EpochDateTimeConverter()
          .fromJson((json['endDate'] as num).toInt()),
      boxStatus: $enumDecode(_$BoxStatusEnumMap, json['boxStatus']),
      hasLandMark: json['hasLandMark'] as bool? ?? false,
    );

Map<String, dynamic> _$$YearBoxImplToJson(_$YearBoxImpl instance) =>
    <String, dynamic>{
      'boxNumber': instance.id,
      'startDate': const EpochDateTimeConverter().toJson(instance.startDate),
      'endDate': const EpochDateTimeConverter().toJson(instance.endDate),
      'boxStatus': _$BoxStatusEnumMap[instance.boxStatus]!,
      'hasLandMark': instance.hasLandMark,
    };
