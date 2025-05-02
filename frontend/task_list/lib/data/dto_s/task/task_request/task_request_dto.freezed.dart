// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskRequestDTO _$TaskRequestDTOFromJson(Map<String, dynamic> json) {
  return _TaskRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$TaskRequestDTO {
  @JsonKey(name: "task")
  String get task => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "firstTime")
  String get firstTime => throw _privateConstructorUsedError;
  @JsonKey(name: "stateTask")
  bool get stateTask => throw _privateConstructorUsedError;

  /// Serializes this TaskRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskRequestDTOCopyWith<TaskRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskRequestDTOCopyWith<$Res> {
  factory $TaskRequestDTOCopyWith(
          TaskRequestDTO value, $Res Function(TaskRequestDTO) then) =
      _$TaskRequestDTOCopyWithImpl<$Res, TaskRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "task") String task,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "firstTime") String firstTime,
      @JsonKey(name: "stateTask") bool stateTask});
}

/// @nodoc
class _$TaskRequestDTOCopyWithImpl<$Res, $Val extends TaskRequestDTO>
    implements $TaskRequestDTOCopyWith<$Res> {
  _$TaskRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? date = null,
    Object? firstTime = null,
    Object? stateTask = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskRequestDTOImplCopyWith<$Res>
    implements $TaskRequestDTOCopyWith<$Res> {
  factory _$$TaskRequestDTOImplCopyWith(_$TaskRequestDTOImpl value,
          $Res Function(_$TaskRequestDTOImpl) then) =
      __$$TaskRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "task") String task,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "firstTime") String firstTime,
      @JsonKey(name: "stateTask") bool stateTask});
}

/// @nodoc
class __$$TaskRequestDTOImplCopyWithImpl<$Res>
    extends _$TaskRequestDTOCopyWithImpl<$Res, _$TaskRequestDTOImpl>
    implements _$$TaskRequestDTOImplCopyWith<$Res> {
  __$$TaskRequestDTOImplCopyWithImpl(
      _$TaskRequestDTOImpl _value, $Res Function(_$TaskRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? date = null,
    Object? firstTime = null,
    Object? stateTask = null,
  }) {
    return _then(_$TaskRequestDTOImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskRequestDTOImpl implements _TaskRequestDTO {
  const _$TaskRequestDTOImpl(
      {@JsonKey(name: "task") required this.task,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "firstTime") required this.firstTime,
      @JsonKey(name: "stateTask") required this.stateTask});

  factory _$TaskRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskRequestDTOImplFromJson(json);

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
  String toString() {
    return 'TaskRequestDTO(task: $task, date: $date, firstTime: $firstTime, stateTask: $stateTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskRequestDTOImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.firstTime, firstTime) ||
                other.firstTime == firstTime) &&
            (identical(other.stateTask, stateTask) ||
                other.stateTask == stateTask));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, task, date, firstTime, stateTask);

  /// Create a copy of TaskRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskRequestDTOImplCopyWith<_$TaskRequestDTOImpl> get copyWith =>
      __$$TaskRequestDTOImplCopyWithImpl<_$TaskRequestDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _TaskRequestDTO implements TaskRequestDTO {
  const factory _TaskRequestDTO(
          {@JsonKey(name: "task") required final String task,
          @JsonKey(name: "date") required final String date,
          @JsonKey(name: "firstTime") required final String firstTime,
          @JsonKey(name: "stateTask") required final bool stateTask}) =
      _$TaskRequestDTOImpl;

  factory _TaskRequestDTO.fromJson(Map<String, dynamic> json) =
      _$TaskRequestDTOImpl.fromJson;

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

  /// Create a copy of TaskRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskRequestDTOImplCopyWith<_$TaskRequestDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
