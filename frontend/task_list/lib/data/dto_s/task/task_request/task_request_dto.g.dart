// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskRequestDTOImpl _$$TaskRequestDTOImplFromJson(Map<String, dynamic> json) =>
    _$TaskRequestDTOImpl(
      task: json['task'] as String,
      date: json['date'] as String,
      firstTime: json['firstTime'] as String,
      stateTask: json['stateTask'] as bool,
    );

Map<String, dynamic> _$$TaskRequestDTOImplToJson(
        _$TaskRequestDTOImpl instance) =>
    <String, dynamic>{
      'task': instance.task,
      'date': instance.date,
      'firstTime': instance.firstTime,
      'stateTask': instance.stateTask,
    };
