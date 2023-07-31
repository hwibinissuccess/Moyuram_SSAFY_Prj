// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlarmModel _$AlarmModelFromJson(Map<String, dynamic> json) => AlarmModel(
      title: json['title'] as String,
      isLock: json['isLock'] as bool,
      dayOfWeek:
          (json['dayOfWeek'] as List<dynamic>).map((e) => e as String).toList(),
      time: json['time'] as String,
      alarmGroupId: json['alarmGroupId'] as int,
      toggle: json['toggle'] as String,
    );

Map<String, dynamic> _$AlarmModelToJson(AlarmModel instance) =>
    <String, dynamic>{
      'alarmGroupId': instance.alarmGroupId,
      'title': instance.title,
      'isLock': instance.isLock,
      'dayOfWeek': instance.dayOfWeek,
      'time': instance.time,
      'toggle': instance.toggle,
    };
