
import 'package:json_annotation/json_annotation.dart';

part 'alarm_model.g.dart';

@JsonSerializable()
class AlarmModel{

  final int alarmGroupId;

  final String title;
  final bool isLock;
  final List<String> dayOfWeek;
  final String time;
  final String toggle;

  AlarmModel({


    required this.title,
    required this.isLock,
    required this.dayOfWeek,
    required this.time,
    required this.alarmGroupId,
    required this.toggle,
});

  AlarmModel copyWith({int? alarmGroupId, String? title, bool? isLock, List<String>? dayOfweek, String? time, String? toggle}){
    return AlarmModel(
      alarmGroupId: alarmGroupId ?? this.alarmGroupId,
      title: title ?? this.title,
      isLock: isLock ?? this.isLock,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      time: time ?? this.time,
      toggle: toggle ?? this.toggle,
    );
  }

factory AlarmModel.fromJson(Map<String, dynamic> json)
  =>_$AlarmModelFromJson(json);

Map<String, dynamic> toJson() => _$AlarmModelToJson(this);
}