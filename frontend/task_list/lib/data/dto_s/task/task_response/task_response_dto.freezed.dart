// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskResponseDTO _$TaskResponseDTOFromJson(Map<String, dynamic> json) {
  return _TaskResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$TaskResponseDTO {
  @JsonKey(name: "id")
  int get serverID => throw _privateConstructorUsedError;
  @JsonKey(name: "task")
  String get task => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "firstTime")
  String get firstTime => throw _privateConstructorUsedError;
  @JsonKey(name: "stateTask")
  bool get stateTask => throw _privateConstructorUsedError;
  @JsonKey(name: "dateJoined")
  DateTime get dateJoined => throw _privateConstructorUsedError;

  /// Serializes this TaskResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskResponseDTOCopyWith<TaskResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResponseDTOCopyWith<$Res> {
  factory $TaskResponseDTOCopyWith(
          TaskResponseDTO value, $Res Function(TaskResponseDTO) then) =
      _$TaskResponseDTOCopyWithImpl<$Res, TaskResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int serverID,
      @JsonKey(name: "task") String task,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "firstTime") String firstTime,
      @JsonKey(name: "stateTask") bool stateTask,
      @JsonKey(name: "dateJoined") DateTime dateJoined});
}

/// @nodoc
class _$TaskResponseDTOCopyWithImpl<$Res, $Val extends TaskResponseDTO>
    implements $TaskResponseDTOCopyWith<$Res> {
  _$TaskResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverID = null,
    Object? task = null,
    Object? date = null,
    Object? firstTime = null,
    Object? stateTask = null,
    Object? dateJoined = null,
  }) {
    return _then(_value.copyWith(
      serverID: null == serverID
          ? _value.serverID
          : serverID // ignore: cast_nullable_to_non_nullable
              as int,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      firstTime: null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as String,
      stateTask: null == stateTask
          ? _value.stateTask
          : stateTask // ignore: cast_nullable_to_non_nullable
              as bool,
      dateJoined: null == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskResponseDTOImplCopyWith<$Res>
    implements $TaskResponseDTOCopyWith<$Res> {
  factory _$$TaskResponseDTOImplCopyWith(_$TaskResponseDTOImpl value,
          $Res Function(_$TaskResponseDTOImpl) then) =
      __$$TaskResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int serverID,
      @JsonKey(name: "task") String task,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "firstTime") String firstTime,
      @JsonKey(name: "stateTask") bool stateTask,
      @JsonKey(name: "dateJoined") DateTime dateJoined});
}

/// @nodoc
class __$$TaskResponseDTOImplCopyWithImpl<$Res>
    extends _$TaskResponseDTOCopyWithImpl<$Res, _$TaskResponseDTOImpl>
    implements _$$TaskResponseDTOImplCopyWith<$Res> {
  __$$TaskResponseDTOImplCopyWithImpl(
      _$TaskResponseDTOImpl _value, $Res Function(_$TaskResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverID = null,
    Object? task = null,
    Object? date = null,
    Object? firstTime = null,
    Object? stateTask = null,
    Object? dateJoined = null,
  }) {
    return _then(_$TaskResponseDTOImpl(
      serverID: null == serverID
          ? _value.serverID
          : serverID // ignore: cast_nullable_to_non_nullable
              as int,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      firstTime: null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as String,
      stateTask: null == stateTask
          ? _value.stateTask
          : stateTask // ignore: cast_nullable_to_non_nullable
              as bool,
      dateJoined: null == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskResponseDTOImpl implements _TaskResponseDTO {
  const _$TaskResponseDTOImpl(
      {@JsonKey(name: "id") required this.serverID,
      @JsonKey(name: "task") required this.task,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "firstTime") required this.firstTime,
      @JsonKey(name: "stateTask") required this.stateTask,
      @JsonKey(name: "dateJoined") required this.dateJoined});

  factory _$TaskResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int serverID;
  @override
  @JsonKey(name: "task")
  final String task;
  @override
  @JsonKey(name: "date")
  final String date;
  @override
  @JsonKey(name: "firstTime")
  final String firstTime;
  @override
  @JsonKey(name: "stateTask")
  final bool stateTask;
  @override
  @JsonKey(name: "dateJoined")
  final DateTime dateJoined;

  @override
  String toString() {
    return 'TaskResponseDTO(serverID: $serverID, task: $task, date: $date, firstTime: $firstTime, stateTask: $stateTask, dateJoined: $dateJoined)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskResponseDTOImpl &&
            (identical(other.serverID, serverID) ||
                other.serverID == serverID) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.firstTime, firstTime) ||
                other.firstTime == firstTime) &&
            (identical(other.stateTask, stateTask) ||
                other.stateTask == stateTask) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, serverID, task, date, firstTime, stateTask, dateJoined);

  /// Create a copy of TaskResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskResponseDTOImplCopyWith<_$TaskResponseDTOImpl> get copyWith =>
      __$$TaskResponseDTOImplCopyWithImpl<_$TaskResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _TaskResponseDTO implements TaskResponseDTO {
  const factory _TaskResponseDTO(
          {@JsonKey(name: "id") required final int serverID,
          @JsonKey(name: "task") required final String task,
          @JsonKey(name: "date") required final String date,
          @JsonKey(name: "firstTime") required final String firstTime,
          @JsonKey(name: "stateTask") required final bool stateTask,
          @JsonKey(name: "dateJoined") required final DateTime dateJoined}) =
      _$TaskResponseDTOImpl;

  factory _TaskResponseDTO.fromJson(Map<String, dynamic> json) =
      _$TaskResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get serverID;
  @override
  @JsonKey(name: "task")
  String get task;
  @override
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(name: "firstTime")
  String get firstTime;
  @override
  @JsonKey(name: "stateTask")
  bool get stateTask;
  @override
  @JsonKey(name: "dateJoined")
  DateTime get dateJoined;

  /// Create a copy of TaskResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskResponseDTOImplCopyWith<_$TaskResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
