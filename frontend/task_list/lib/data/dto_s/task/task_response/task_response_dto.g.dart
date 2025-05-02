// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskResponseDTOImpl _$$TaskResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskResponseDTOImpl(
      serverID: (json['id'] as num).toInt(),
      task: json['task'] as String,
      date: json['date'] as String,
      firstTime: json['firstTime'] as String,
      stateTask: json['stateTask'] as bool,
      dateJoined: DateTime.parse(json['dateJoined'] as String),
    );

Map<String, dynamic> _$$TaskResponseDTOImplToJson(
        _$TaskResponseDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.serverID,
      'task': instance.task,
      'date': instance.date,
      'firstTime': instance.firstTime,
      'stateTask': instance.stateTask,
      'dateJoined': instance.dateJoined.toIso8601String(),
    };
