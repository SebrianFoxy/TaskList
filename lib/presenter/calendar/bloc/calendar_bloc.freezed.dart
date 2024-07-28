// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskThisDate) fetch,
    required TResult Function(int id, String? taskThisDate, bool? stateTask)
        changeStateTask,
    required TResult Function(int id) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskThisDate)? fetch,
    TResult? Function(int id, String? taskThisDate, bool? stateTask)?
        changeStateTask,
    TResult? Function(int id)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskThisDate)? fetch,
    TResult Function(int id, String? taskThisDate, bool? stateTask)?
        changeStateTask,
    TResult Function(int id)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarListEventCopyWith<$Res> {
  factory $CalendarListEventCopyWith(
          CalendarListEvent value, $Res Function(CalendarListEvent) then) =
      _$CalendarListEventCopyWithImpl<$Res, CalendarListEvent>;
}

/// @nodoc
class _$CalendarListEventCopyWithImpl<$Res, $Val extends CalendarListEvent>
    implements $CalendarListEventCopyWith<$Res> {
  _$CalendarListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? taskThisDate});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$CalendarListEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskThisDate = freezed,
  }) {
    return _then(_$FetchImpl(
      taskThisDate: freezed == taskThisDate
          ? _value.taskThisDate
          : taskThisDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl({this.taskThisDate});

  @override
  final String? taskThisDate;

  @override
  String toString() {
    return 'CalendarListEvent.fetch(taskThisDate: $taskThisDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.taskThisDate, taskThisDate) ||
                other.taskThisDate == taskThisDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskThisDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskThisDate) fetch,
    required TResult Function(int id, String? taskThisDate, bool? stateTask)
        changeStateTask,
    required TResult Function(int id) deleteTask,
  }) {
    return fetch(taskThisDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskThisDate)? fetch,
    TResult? Function(int id, String? taskThisDate, bool? stateTask)?
        changeStateTask,
    TResult? Function(int id)? deleteTask,
  }) {
    return fetch?.call(taskThisDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskThisDate)? fetch,
    TResult Function(int id, String? taskThisDate, bool? stateTask)?
        changeStateTask,
    TResult Function(int id)? deleteTask,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(taskThisDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CalendarListEvent {
  const factory _Fetch({final String? taskThisDate}) = _$FetchImpl;

  String? get taskThisDate;
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeStateTaskImplCopyWith<$Res> {
  factory _$$ChangeStateTaskImplCopyWith(_$ChangeStateTaskImpl value,
          $Res Function(_$ChangeStateTaskImpl) then) =
      __$$ChangeStateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String? taskThisDate, bool? stateTask});
}

/// @nodoc
class __$$ChangeStateTaskImplCopyWithImpl<$Res>
    extends _$CalendarListEventCopyWithImpl<$Res, _$ChangeStateTaskImpl>
    implements _$$ChangeStateTaskImplCopyWith<$Res> {
  __$$ChangeStateTaskImplCopyWithImpl(
      _$ChangeStateTaskImpl _value, $Res Function(_$ChangeStateTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskThisDate = freezed,
    Object? stateTask = freezed,
  }) {
    return _then(_$ChangeStateTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      taskThisDate: freezed == taskThisDate
          ? _value.taskThisDate
          : taskThisDate // ignore: cast_nullable_to_non_nullable
              as String?,
      stateTask: freezed == stateTask
          ? _value.stateTask
          : stateTask // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ChangeStateTaskImpl implements _ChangeStateTask {
  const _$ChangeStateTaskImpl(
      {required this.id, this.taskThisDate, this.stateTask});

  @override
  final int id;
  @override
  final String? taskThisDate;
  @override
  final bool? stateTask;

  @override
  String toString() {
    return 'CalendarListEvent.changeStateTask(id: $id, taskThisDate: $taskThisDate, stateTask: $stateTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStateTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskThisDate, taskThisDate) ||
                other.taskThisDate == taskThisDate) &&
            (identical(other.stateTask, stateTask) ||
                other.stateTask == stateTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, taskThisDate, stateTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStateTaskImplCopyWith<_$ChangeStateTaskImpl> get copyWith =>
      __$$ChangeStateTaskImplCopyWithImpl<_$ChangeStateTaskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskThisDate) fetch,
    required TResult Function(int id, String? taskThisDate, bool? stateTask)
        changeStateTask,
    required TResult Function(int id) deleteTask,
  }) {
    return changeStateTask(id, taskThisDate, stateTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskThisDate)? fetch,
    TResult? Function(int id, String? taskThisDate, bool? stateTask)?
        changeStateTask,
    TResult? Function(int id)? deleteTask,
  }) {
    return changeStateTask?.call(id, taskThisDate, stateTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskThisDate)? fetch,
    TResult Function(int id, String? taskThisDate, bool? stateTask)?
        changeStateTask,
    TResult Function(int id)? deleteTask,
    required TResult orElse(),
  }) {
    if (changeStateTask != null) {
      return changeStateTask(id, taskThisDate, stateTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return changeStateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return changeStateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (changeStateTask != null) {
      return changeStateTask(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateTask implements CalendarListEvent {
  const factory _ChangeStateTask(
      {required final int id,
      final String? taskThisDate,
      final bool? stateTask}) = _$ChangeStateTaskImpl;

  int get id;
  String? get taskThisDate;
  bool? get stateTask;
  @JsonKey(ignore: true)
  _$$ChangeStateTaskImplCopyWith<_$ChangeStateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$CalendarListEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl implements _DeleteTask {
  const _$DeleteTaskImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CalendarListEvent.deleteTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskThisDate) fetch,
    required TResult Function(int id, String? taskThisDate, bool? stateTask)
        changeStateTask,
    required TResult Function(int id) deleteTask,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskThisDate)? fetch,
    TResult? Function(int id, String? taskThisDate, bool? stateTask)?
        changeStateTask,
    TResult? Function(int id)? deleteTask,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskThisDate)? fetch,
    TResult Function(int id, String? taskThisDate, bool? stateTask)?
        changeStateTask,
    TResult Function(int id)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements CalendarListEvent {
  const factory _DeleteTask({required final int id}) = _$DeleteTaskImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarListState {
  List<dynamic> get tasks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(List<dynamic> tasks, Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(List<dynamic> tasks, Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(List<dynamic> tasks, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalendarListStateIdle value) idle,
    required TResult Function(_CalendarListStateSuccessLoading value)
        successLoading,
    required TResult Function(_CalendarListStateLoading value) loading,
    required TResult Function(_CalendarListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalendarListStateIdle value)? idle,
    TResult? Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult? Function(_CalendarListStateLoading value)? loading,
    TResult? Function(_CalendarListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalendarListStateIdle value)? idle,
    TResult Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult Function(_CalendarListStateLoading value)? loading,
    TResult Function(_CalendarListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarListStateCopyWith<CalendarListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarListStateCopyWith<$Res> {
  factory $CalendarListStateCopyWith(
          CalendarListState value, $Res Function(CalendarListState) then) =
      _$CalendarListStateCopyWithImpl<$Res, CalendarListState>;
  @useResult
  $Res call({List<dynamic> tasks});
}

/// @nodoc
class _$CalendarListStateCopyWithImpl<$Res, $Val extends CalendarListState>
    implements $CalendarListStateCopyWith<$Res> {
  _$CalendarListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarListStateIdleImplCopyWith<$Res>
    implements $CalendarListStateCopyWith<$Res> {
  factory _$$CalendarListStateIdleImplCopyWith(
          _$CalendarListStateIdleImpl value,
          $Res Function(_$CalendarListStateIdleImpl) then) =
      __$$CalendarListStateIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> tasks});
}

/// @nodoc
class __$$CalendarListStateIdleImplCopyWithImpl<$Res>
    extends _$CalendarListStateCopyWithImpl<$Res, _$CalendarListStateIdleImpl>
    implements _$$CalendarListStateIdleImplCopyWith<$Res> {
  __$$CalendarListStateIdleImplCopyWithImpl(_$CalendarListStateIdleImpl _value,
      $Res Function(_$CalendarListStateIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$CalendarListStateIdleImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CalendarListStateIdleImpl extends _CalendarListStateIdle {
  const _$CalendarListStateIdleImpl(
      {final List<dynamic> tasks = const <Task>[]})
      : _tasks = tasks,
        super._();

  final List<dynamic> _tasks;
  @override
  @JsonKey()
  List<dynamic> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'CalendarListState.idle(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarListStateIdleImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarListStateIdleImplCopyWith<_$CalendarListStateIdleImpl>
      get copyWith => __$$CalendarListStateIdleImplCopyWithImpl<
          _$CalendarListStateIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(List<dynamic> tasks, Object? error) error,
  }) {
    return idle(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(List<dynamic> tasks, Object? error)? error,
  }) {
    return idle?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(List<dynamic> tasks, Object? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalendarListStateIdle value) idle,
    required TResult Function(_CalendarListStateSuccessLoading value)
        successLoading,
    required TResult Function(_CalendarListStateLoading value) loading,
    required TResult Function(_CalendarListStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalendarListStateIdle value)? idle,
    TResult? Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult? Function(_CalendarListStateLoading value)? loading,
    TResult? Function(_CalendarListStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalendarListStateIdle value)? idle,
    TResult Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult Function(_CalendarListStateLoading value)? loading,
    TResult Function(_CalendarListStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _CalendarListStateIdle extends CalendarListState {
  const factory _CalendarListStateIdle({final List<dynamic> tasks}) =
      _$CalendarListStateIdleImpl;
  const _CalendarListStateIdle._() : super._();

  @override
  List<dynamic> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$CalendarListStateIdleImplCopyWith<_$CalendarListStateIdleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalendarListStateSuccessLoadingImplCopyWith<$Res>
    implements $CalendarListStateCopyWith<$Res> {
  factory _$$CalendarListStateSuccessLoadingImplCopyWith(
          _$CalendarListStateSuccessLoadingImpl value,
          $Res Function(_$CalendarListStateSuccessLoadingImpl) then) =
      __$$CalendarListStateSuccessLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> tasks});
}

/// @nodoc
class __$$CalendarListStateSuccessLoadingImplCopyWithImpl<$Res>
    extends _$CalendarListStateCopyWithImpl<$Res,
        _$CalendarListStateSuccessLoadingImpl>
    implements _$$CalendarListStateSuccessLoadingImplCopyWith<$Res> {
  __$$CalendarListStateSuccessLoadingImplCopyWithImpl(
      _$CalendarListStateSuccessLoadingImpl _value,
      $Res Function(_$CalendarListStateSuccessLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$CalendarListStateSuccessLoadingImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CalendarListStateSuccessLoadingImpl
    extends _CalendarListStateSuccessLoading {
  const _$CalendarListStateSuccessLoadingImpl(
      {required final List<dynamic> tasks})
      : _tasks = tasks,
        super._();

  final List<dynamic> _tasks;
  @override
  List<dynamic> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'CalendarListState.successLoading(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarListStateSuccessLoadingImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarListStateSuccessLoadingImplCopyWith<
          _$CalendarListStateSuccessLoadingImpl>
      get copyWith => __$$CalendarListStateSuccessLoadingImplCopyWithImpl<
          _$CalendarListStateSuccessLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(List<dynamic> tasks, Object? error) error,
  }) {
    return successLoading(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(List<dynamic> tasks, Object? error)? error,
  }) {
    return successLoading?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(List<dynamic> tasks, Object? error)? error,
    required TResult orElse(),
  }) {
    if (successLoading != null) {
      return successLoading(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalendarListStateIdle value) idle,
    required TResult Function(_CalendarListStateSuccessLoading value)
        successLoading,
    required TResult Function(_CalendarListStateLoading value) loading,
    required TResult Function(_CalendarListStateError value) error,
  }) {
    return successLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalendarListStateIdle value)? idle,
    TResult? Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult? Function(_CalendarListStateLoading value)? loading,
    TResult? Function(_CalendarListStateError value)? error,
  }) {
    return successLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalendarListStateIdle value)? idle,
    TResult Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult Function(_CalendarListStateLoading value)? loading,
    TResult Function(_CalendarListStateError value)? error,
    required TResult orElse(),
  }) {
    if (successLoading != null) {
      return successLoading(this);
    }
    return orElse();
  }
}

abstract class _CalendarListStateSuccessLoading extends CalendarListState {
  const factory _CalendarListStateSuccessLoading(
          {required final List<dynamic> tasks}) =
      _$CalendarListStateSuccessLoadingImpl;
  const _CalendarListStateSuccessLoading._() : super._();

  @override
  List<dynamic> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$CalendarListStateSuccessLoadingImplCopyWith<
          _$CalendarListStateSuccessLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalendarListStateLoadingImplCopyWith<$Res>
    implements $CalendarListStateCopyWith<$Res> {
  factory _$$CalendarListStateLoadingImplCopyWith(
          _$CalendarListStateLoadingImpl value,
          $Res Function(_$CalendarListStateLoadingImpl) then) =
      __$$CalendarListStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> tasks});
}

/// @nodoc
class __$$CalendarListStateLoadingImplCopyWithImpl<$Res>
    extends _$CalendarListStateCopyWithImpl<$Res,
        _$CalendarListStateLoadingImpl>
    implements _$$CalendarListStateLoadingImplCopyWith<$Res> {
  __$$CalendarListStateLoadingImplCopyWithImpl(
      _$CalendarListStateLoadingImpl _value,
      $Res Function(_$CalendarListStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$CalendarListStateLoadingImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CalendarListStateLoadingImpl extends _CalendarListStateLoading {
  const _$CalendarListStateLoadingImpl(
      {final List<dynamic> tasks = const <Task>[]})
      : _tasks = tasks,
        super._();

  final List<dynamic> _tasks;
  @override
  @JsonKey()
  List<dynamic> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'CalendarListState.loading(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarListStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarListStateLoadingImplCopyWith<_$CalendarListStateLoadingImpl>
      get copyWith => __$$CalendarListStateLoadingImplCopyWithImpl<
          _$CalendarListStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(List<dynamic> tasks, Object? error) error,
  }) {
    return loading(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(List<dynamic> tasks, Object? error)? error,
  }) {
    return loading?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(List<dynamic> tasks, Object? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalendarListStateIdle value) idle,
    required TResult Function(_CalendarListStateSuccessLoading value)
        successLoading,
    required TResult Function(_CalendarListStateLoading value) loading,
    required TResult Function(_CalendarListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalendarListStateIdle value)? idle,
    TResult? Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult? Function(_CalendarListStateLoading value)? loading,
    TResult? Function(_CalendarListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalendarListStateIdle value)? idle,
    TResult Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult Function(_CalendarListStateLoading value)? loading,
    TResult Function(_CalendarListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CalendarListStateLoading extends CalendarListState {
  const factory _CalendarListStateLoading({final List<dynamic> tasks}) =
      _$CalendarListStateLoadingImpl;
  const _CalendarListStateLoading._() : super._();

  @override
  List<dynamic> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$CalendarListStateLoadingImplCopyWith<_$CalendarListStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalendarListStateErrorImplCopyWith<$Res>
    implements $CalendarListStateCopyWith<$Res> {
  factory _$$CalendarListStateErrorImplCopyWith(
          _$CalendarListStateErrorImpl value,
          $Res Function(_$CalendarListStateErrorImpl) then) =
      __$$CalendarListStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> tasks, Object? error});
}

/// @nodoc
class __$$CalendarListStateErrorImplCopyWithImpl<$Res>
    extends _$CalendarListStateCopyWithImpl<$Res, _$CalendarListStateErrorImpl>
    implements _$$CalendarListStateErrorImplCopyWith<$Res> {
  __$$CalendarListStateErrorImplCopyWithImpl(
      _$CalendarListStateErrorImpl _value,
      $Res Function(_$CalendarListStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? error = freezed,
  }) {
    return _then(_$CalendarListStateErrorImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$CalendarListStateErrorImpl extends _CalendarListStateError {
  const _$CalendarListStateErrorImpl(
      {final List<dynamic> tasks = const <Task>[], this.error})
      : _tasks = tasks,
        super._();

  final List<dynamic> _tasks;
  @override
  @JsonKey()
  List<dynamic> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'CalendarListState.error(tasks: $tasks, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarListStateErrorImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarListStateErrorImplCopyWith<_$CalendarListStateErrorImpl>
      get copyWith => __$$CalendarListStateErrorImplCopyWithImpl<
          _$CalendarListStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(List<dynamic> tasks, Object? error) error,
  }) {
    return error(tasks, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(List<dynamic> tasks, Object? error)? error,
  }) {
    return error?.call(tasks, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(List<dynamic> tasks, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(tasks, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalendarListStateIdle value) idle,
    required TResult Function(_CalendarListStateSuccessLoading value)
        successLoading,
    required TResult Function(_CalendarListStateLoading value) loading,
    required TResult Function(_CalendarListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalendarListStateIdle value)? idle,
    TResult? Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult? Function(_CalendarListStateLoading value)? loading,
    TResult? Function(_CalendarListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalendarListStateIdle value)? idle,
    TResult Function(_CalendarListStateSuccessLoading value)? successLoading,
    TResult Function(_CalendarListStateLoading value)? loading,
    TResult Function(_CalendarListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CalendarListStateError extends CalendarListState {
  const factory _CalendarListStateError(
      {final List<dynamic> tasks,
      final Object? error}) = _$CalendarListStateErrorImpl;
  const _CalendarListStateError._() : super._();

  @override
  List<dynamic> get tasks;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$CalendarListStateErrorImplCopyWith<_$CalendarListStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
