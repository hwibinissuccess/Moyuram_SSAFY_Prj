import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youngjun/alarm/component/alarm_list.dart';
import 'package:youngjun/alarm/model/alarm_model.dart';
import 'package:youngjun/alarm/provider/alarm_provider.dart';
import 'package:youngjun/common/const/colors.dart';
import 'package:youngjun/common/layout/main_nav.dart';
import 'package:youngjun/common/layout/title_bar.dart';

class MainAlarmList extends ConsumerStatefulWidget {
  const MainAlarmList({super.key});

  @override
  ConsumerState<MainAlarmList> createState() => _MainAlarmListState();
}

class _MainAlarmListState extends ConsumerState<MainAlarmList> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final List<AlarmModel> alarms = ref.watch(AlarmProvider);

    return Scaffold(
        backgroundColor: BACKGROUND_COLOR,
        appBar: TitleBar(
          onPressed: () {},
          appBar: AppBar(),
          title: Text('모여람'), titleIcon: Icons.alarm,
        ),
        body: AlarmList(alarms.map((e) => null) alarmGroupId: e.alarmGroupId,
                title: e.title,
                isLock: e.isLock,
                dayOfWeek: e.dayOfWeek,
                time: e.time,
                toggle: e.toggle),
        bottomSheet: MainNav(),);
  }
}
