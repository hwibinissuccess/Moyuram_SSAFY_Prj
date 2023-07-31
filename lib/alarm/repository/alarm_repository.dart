import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youngjun/alarm/model/alarm_model.dart';
import 'package:youngjun/common/const/data.dart';
import 'package:youngjun/common/dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'alarm_repository.g.dart';

final alarmRepositoryProvider = Provider<AlarmRepository>((ref) {
  final dio = ref.watch(dioProvider);

  final repository = AlarmRepository(dio, baseUrl: 'http://$ip/alalrmgroups');

  return repository;
});

@RestApi()
abstract class AlarmRepository {

  factory AlarmRepository(Dio dio, {String baseUrl}) = _AlarmRepository;

  @GET('/')

  Future<AlarmModel> getAlarmList();

}
