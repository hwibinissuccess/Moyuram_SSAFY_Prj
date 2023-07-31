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
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      appBar: TitleBar(
        onPressed: (){},
        appBar: AppBar(),
        title: Text('모여람'), titleIcon: Icons.alarm,
      ),
      body: AlarmList(title: '제발 완서어어어엉!!!', use: true, time: '12:00',),
      bottomSheet: MainNav(),
    );
  }
}
