import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youngjun/alarm/model/alarm_model.dart';


final AlarmProvider = StateNotifierProvider<AlarmStateNotifier, List<AlarmModel>>((ref){
  return AlarmStateNotifier();
});

class AlarmStateNotifier extends StateNotifier<List<AlarmModel>>{
  AlarmStateNotifier(): super([]);

  void toggles({required int alarmgroupId}){
    state = [
      for(final AlarmModel in state)
        if(AlarmModel.alarmGroupId == alarmgroupId)
          AlarmModel.copyWith(isLock: !AlarmModel.isLock)
      else
        AlarmModel,
    ];
  }
}