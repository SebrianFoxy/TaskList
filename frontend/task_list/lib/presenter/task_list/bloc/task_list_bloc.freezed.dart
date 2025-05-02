// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListEventCopyWith<$Res> {
  factory $TaskListEventCopyWith(
          TaskListEvent value, $Res Function(TaskListEvent) then) =
      _$TaskListEventCopyWithImpl<$Res, TaskListEvent>;
}

/// @nodoc
class _$TaskListEventCopyWithImpl<$Res, $Val extends TaskListEvent>
    implements $TaskListEventCopyWith<$Res> {
  _$TaskListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'TaskListEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TaskListEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$CreateTaskImplCopyWith<$Res> {
  factory _$$CreateTaskImplCopyWith(
          _$CreateTaskImpl value, $Res Function(_$CreateTaskImpl) then) =
      __$$CreateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String descriptionTask, String date, String firstTime});
}

/// @nodoc
class __$$CreateTaskImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$CreateTaskImpl>
    implements _$$CreateTaskImplCopyWith<$Res> {
  __$$CreateTaskImplCopyWithImpl(
      _$CreateTaskImpl _value, $Res Function(_$CreateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionTask = null,
    Object? date = null,
    Object? firstTime = null,
  }) {
    return _then(_$CreateTaskImpl(
      descriptionTask: null == descriptionTask
          ? _value.descriptionTask
          : descriptionTask // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      firstTime: null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTaskImpl implements _CreateTask {
  const _$CreateTaskImpl(
      {required this.descriptionTask,
      required this.date,
      required this.firstTime});

  @override
  final String descriptionTask;
  @override
  final String date;
  @override
  final String firstTime;

  @override
  String toString() {
    return 'TaskListEvent.createTask(descriptionTask: $descriptionTask, date: $date, firstTime: $firstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskImpl &&
            (identical(other.descriptionTask, descriptionTask) ||
                other.descriptionTask == descriptionTask) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.firstTime, firstTime) ||
                other.firstTime == firstTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, descriptionTask, date, firstTime);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
      __$$CreateTaskImplCopyWithImpl<_$CreateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return createTask(descriptionTask, date, firstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return createTask?.call(descriptionTask, date, firstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(descriptionTask, date, firstTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return createTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return createTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(this);
    }
    return orElse();
  }
}

abstract class _CreateTask implements TaskListEvent {
  const factory _CreateTask(
      {required final String descriptionTask,
      required final String date,
      required final String firstTime}) = _$CreateTaskImpl;

  String get descriptionTask;
  String get date;
  String get firstTime;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
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
    extends _$TaskListEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
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
    return 'TaskListEvent.deleteTask(id: $id)';
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

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
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
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TaskListEvent {
  const factory _DeleteTask({required final int id}) = _$DeleteTaskImpl;

  int get id;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTaskImplCopyWith<$Res> {
  factory _$$SearchTaskImplCopyWith(
          _$SearchTaskImpl value, $Res Function(_$SearchTaskImpl) then) =
      __$$SearchTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$SearchTaskImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$SearchTaskImpl>
    implements _$$SearchTaskImplCopyWith<$Res> {
  __$$SearchTaskImplCopyWithImpl(
      _$SearchTaskImpl _value, $Res Function(_$SearchTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchTaskImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchTaskImpl implements _SearchTask {
  const _$SearchTaskImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'TaskListEvent.searchTask(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTaskImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTaskImplCopyWith<_$SearchTaskImpl> get copyWith =>
      __$$SearchTaskImplCopyWithImpl<_$SearchTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return searchTask(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return searchTask?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (searchTask != null) {
      return searchTask(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return searchTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return searchTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (searchTask != null) {
      return searchTask(this);
    }
    return orElse();
  }
}

abstract class _SearchTask implements TaskListEvent {
  const factory _SearchTask({final String? query}) = _$SearchTaskImpl;

  String? get query;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTaskImplCopyWith<_$SearchTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilteredTasksImplCopyWith<$Res> {
  factory _$$FilteredTasksImplCopyWith(
          _$FilteredTasksImpl value, $Res Function(_$FilteredTasksImpl) then) =
      __$$FilteredTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? filter});
}

/// @nodoc
class __$$FilteredTasksImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$FilteredTasksImpl>
    implements _$$FilteredTasksImplCopyWith<$Res> {
  __$$FilteredTasksImplCopyWithImpl(
      _$FilteredTasksImpl _value, $Res Function(_$FilteredTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$FilteredTasksImpl(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilteredTasksImpl implements _FilteredTasks {
  const _$FilteredTasksImpl({this.filter});

  @override
  final String? filter;

  @override
  String toString() {
    return 'TaskListEvent.filteredTasks(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredTasksImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredTasksImplCopyWith<_$FilteredTasksImpl> get copyWith =>
      __$$FilteredTasksImplCopyWithImpl<_$FilteredTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return filteredTasks(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return filteredTasks?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (filteredTasks != null) {
      return filteredTasks(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return filteredTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return filteredTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (filteredTasks != null) {
      return filteredTasks(this);
    }
    return orElse();
  }
}

abstract class _FilteredTasks implements TaskListEvent {
  const factory _FilteredTasks({final String? filter}) = _$FilteredTasksImpl;

  String? get filter;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilteredTasksImplCopyWith<_$FilteredTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeStateTaskImplCopyWith<$Res> {
  factory _$$ChangeStateTaskImplCopyWith(_$ChangeStateTaskImpl value,
          $Res Function(_$ChangeStateTaskImpl) then) =
      __$$ChangeStateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool? stateTask});
}

/// @nodoc
class __$$ChangeStateTaskImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$ChangeStateTaskImpl>
    implements _$$ChangeStateTaskImplCopyWith<$Res> {
  __$$ChangeStateTaskImplCopyWithImpl(
      _$ChangeStateTaskImpl _value, $Res Function(_$ChangeStateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stateTask = freezed,
  }) {
    return _then(_$ChangeStateTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stateTask: freezed == stateTask
          ? _value.stateTask
          : stateTask // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ChangeStateTaskImpl implements _ChangeStateTask {
  const _$ChangeStateTaskImpl({required this.id, this.stateTask});

  @override
  final int id;
  @override
  final bool? stateTask;

  @override
  String toString() {
    return 'TaskListEvent.changeStateTask(id: $id, stateTask: $stateTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStateTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stateTask, stateTask) ||
                other.stateTask == stateTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, stateTask);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStateTaskImplCopyWith<_$ChangeStateTaskImpl> get copyWith =>
      __$$ChangeStateTaskImplCopyWithImpl<_$ChangeStateTaskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return changeStateTask(id, stateTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return changeStateTask?.call(id, stateTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (changeStateTask != null) {
      return changeStateTask(id, stateTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return changeStateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return changeStateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (changeStateTask != null) {
      return changeStateTask(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateTask implements TaskListEvent {
  const factory _ChangeStateTask(
      {required final int id, final bool? stateTask}) = _$ChangeStateTaskImpl;

  int get id;
  bool? get stateTask;

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeStateTaskImplCopyWith<_$ChangeStateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncTaskImplCopyWith<$Res> {
  factory _$$SyncTaskImplCopyWith(
          _$SyncTaskImpl value, $Res Function(_$SyncTaskImpl) then) =
      __$$SyncTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncTaskImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$SyncTaskImpl>
    implements _$$SyncTaskImplCopyWith<$Res> {
  __$$SyncTaskImplCopyWithImpl(
      _$SyncTaskImpl _value, $Res Function(_$SyncTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncTaskImpl implements _SyncTask {
  const _$SyncTaskImpl();

  @override
  String toString() {
    return 'TaskListEvent.syncTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return syncTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return syncTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (syncTask != null) {
      return syncTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return syncTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return syncTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (syncTask != null) {
      return syncTask(this);
    }
    return orElse();
  }
}

abstract class _SyncTask implements TaskListEvent {
  const factory _SyncTask() = _$SyncTaskImpl;
}

/// @nodoc
abstract class _$$SyncDelTaskImplCopyWith<$Res> {
  factory _$$SyncDelTaskImplCopyWith(
          _$SyncDelTaskImpl value, $Res Function(_$SyncDelTaskImpl) then) =
      __$$SyncDelTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncDelTaskImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$SyncDelTaskImpl>
    implements _$$SyncDelTaskImplCopyWith<$Res> {
  __$$SyncDelTaskImplCopyWithImpl(
      _$SyncDelTaskImpl _value, $Res Function(_$SyncDelTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncDelTaskImpl implements _SyncDelTask {
  const _$SyncDelTaskImpl();

  @override
  String toString() {
    return 'TaskListEvent.syncDelTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncDelTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return syncDelTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return syncDelTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (syncDelTask != null) {
      return syncDelTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return syncDelTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return syncDelTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (syncDelTask != null) {
      return syncDelTask(this);
    }
    return orElse();
  }
}

abstract class _SyncDelTask implements TaskListEvent {
  const factory _SyncDelTask() = _$SyncDelTaskImpl;
}

/// @nodoc
abstract class _$$SyncTaskFromServerImplCopyWith<$Res> {
  factory _$$SyncTaskFromServerImplCopyWith(_$SyncTaskFromServerImpl value,
          $Res Function(_$SyncTaskFromServerImpl) then) =
      __$$SyncTaskFromServerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncTaskFromServerImplCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$SyncTaskFromServerImpl>
    implements _$$SyncTaskFromServerImplCopyWith<$Res> {
  __$$SyncTaskFromServerImplCopyWithImpl(_$SyncTaskFromServerImpl _value,
      $Res Function(_$SyncTaskFromServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncTaskFromServerImpl implements _SyncTaskFromServer {
  const _$SyncTaskFromServerImpl();

  @override
  String toString() {
    return 'TaskListEvent.syncTaskFromServer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncTaskFromServerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
            String descriptionTask, String date, String firstTime)
        createTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String? query) searchTask,
    required TResult Function(String? filter) filteredTasks,
    required TResult Function(int id, bool? stateTask) changeStateTask,
    required TResult Function() syncTask,
    required TResult Function() syncDelTask,
    required TResult Function() syncTaskFromServer,
  }) {
    return syncTaskFromServer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String? query)? searchTask,
    TResult? Function(String? filter)? filteredTasks,
    TResult? Function(int id, bool? stateTask)? changeStateTask,
    TResult? Function()? syncTask,
    TResult? Function()? syncDelTask,
    TResult? Function()? syncTaskFromServer,
  }) {
    return syncTaskFromServer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String descriptionTask, String date, String firstTime)?
        createTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String? query)? searchTask,
    TResult Function(String? filter)? filteredTasks,
    TResult Function(int id, bool? stateTask)? changeStateTask,
    TResult Function()? syncTask,
    TResult Function()? syncDelTask,
    TResult Function()? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (syncTaskFromServer != null) {
      return syncTaskFromServer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SearchTask value) searchTask,
    required TResult Function(_FilteredTasks value) filteredTasks,
    required TResult Function(_ChangeStateTask value) changeStateTask,
    required TResult Function(_SyncTask value) syncTask,
    required TResult Function(_SyncDelTask value) syncDelTask,
    required TResult Function(_SyncTaskFromServer value) syncTaskFromServer,
  }) {
    return syncTaskFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SearchTask value)? searchTask,
    TResult? Function(_FilteredTasks value)? filteredTasks,
    TResult? Function(_ChangeStateTask value)? changeStateTask,
    TResult? Function(_SyncTask value)? syncTask,
    TResult? Function(_SyncDelTask value)? syncDelTask,
    TResult? Function(_SyncTaskFromServer value)? syncTaskFromServer,
  }) {
    return syncTaskFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SearchTask value)? searchTask,
    TResult Function(_FilteredTasks value)? filteredTasks,
    TResult Function(_ChangeStateTask value)? changeStateTask,
    TResult Function(_SyncTask value)? syncTask,
    TResult Function(_SyncDelTask value)? syncDelTask,
    TResult Function(_SyncTaskFromServer value)? syncTaskFromServer,
    required TResult orElse(),
  }) {
    if (syncTaskFromServer != null) {
      return syncTaskFromServer(this);
    }
    return orElse();
  }
}

abstract class _SyncTaskFromServer implements TaskListEvent {
  const factory _SyncTaskFromServer() = _$SyncTaskFromServerImpl;
}

/// @nodoc
mixin _$TaskListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskListStateIdle value) idle,
    required TResult Function(_TaskListStateSuccessLoading value)
        successLoading,
    required TResult Function(_TaskListStateLoading value) loading,
    required TResult Function(_TaskListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskListStateIdle value)? idle,
    TResult? Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult? Function(_TaskListStateLoading value)? loading,
    TResult? Function(_TaskListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskListStateIdle value)? idle,
    TResult Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult Function(_TaskListStateLoading value)? loading,
    TResult Function(_TaskListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res, TaskListState>;
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res, $Val extends TaskListState>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskListStateIdleImplCopyWith<$Res> {
  factory _$$TaskListStateIdleImplCopyWith(_$TaskListStateIdleImpl value,
          $Res Function(_$TaskListStateIdleImpl) then) =
      __$$TaskListStateIdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> tasks});
}

/// @nodoc
class __$$TaskListStateIdleImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListStateIdleImpl>
    implements _$$TaskListStateIdleImplCopyWith<$Res> {
  __$$TaskListStateIdleImplCopyWithImpl(_$TaskListStateIdleImpl _value,
      $Res Function(_$TaskListStateIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskListStateIdleImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$TaskListStateIdleImpl extends _TaskListStateIdle {
  const _$TaskListStateIdleImpl({final List<dynamic> tasks = const <Task>[]})
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
    return 'TaskListState.idle(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListStateIdleImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListStateIdleImplCopyWith<_$TaskListStateIdleImpl> get copyWith =>
      __$$TaskListStateIdleImplCopyWithImpl<_$TaskListStateIdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(String error) error,
  }) {
    return idle(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(String error)? error,
  }) {
    return idle?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(String error)? error,
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
    required TResult Function(_TaskListStateIdle value) idle,
    required TResult Function(_TaskListStateSuccessLoading value)
        successLoading,
    required TResult Function(_TaskListStateLoading value) loading,
    required TResult Function(_TaskListStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskListStateIdle value)? idle,
    TResult? Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult? Function(_TaskListStateLoading value)? loading,
    TResult? Function(_TaskListStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskListStateIdle value)? idle,
    TResult Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult Function(_TaskListStateLoading value)? loading,
    TResult Function(_TaskListStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _TaskListStateIdle extends TaskListState {
  const factory _TaskListStateIdle({final List<dynamic> tasks}) =
      _$TaskListStateIdleImpl;
  const _TaskListStateIdle._() : super._();

  List<dynamic> get tasks;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListStateIdleImplCopyWith<_$TaskListStateIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskListStateSuccessLoadingImplCopyWith<$Res> {
  factory _$$TaskListStateSuccessLoadingImplCopyWith(
          _$TaskListStateSuccessLoadingImpl value,
          $Res Function(_$TaskListStateSuccessLoadingImpl) then) =
      __$$TaskListStateSuccessLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> tasks});
}

/// @nodoc
class __$$TaskListStateSuccessLoadingImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListStateSuccessLoadingImpl>
    implements _$$TaskListStateSuccessLoadingImplCopyWith<$Res> {
  __$$TaskListStateSuccessLoadingImplCopyWithImpl(
      _$TaskListStateSuccessLoadingImpl _value,
      $Res Function(_$TaskListStateSuccessLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskListStateSuccessLoadingImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$TaskListStateSuccessLoadingImpl extends _TaskListStateSuccessLoading {
  const _$TaskListStateSuccessLoadingImpl({required final List<dynamic> tasks})
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
    return 'TaskListState.successLoading(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListStateSuccessLoadingImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListStateSuccessLoadingImplCopyWith<_$TaskListStateSuccessLoadingImpl>
      get copyWith => __$$TaskListStateSuccessLoadingImplCopyWithImpl<
          _$TaskListStateSuccessLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(String error) error,
  }) {
    return successLoading(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(String error)? error,
  }) {
    return successLoading?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(String error)? error,
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
    required TResult Function(_TaskListStateIdle value) idle,
    required TResult Function(_TaskListStateSuccessLoading value)
        successLoading,
    required TResult Function(_TaskListStateLoading value) loading,
    required TResult Function(_TaskListStateError value) error,
  }) {
    return successLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskListStateIdle value)? idle,
    TResult? Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult? Function(_TaskListStateLoading value)? loading,
    TResult? Function(_TaskListStateError value)? error,
  }) {
    return successLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskListStateIdle value)? idle,
    TResult Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult Function(_TaskListStateLoading value)? loading,
    TResult Function(_TaskListStateError value)? error,
    required TResult orElse(),
  }) {
    if (successLoading != null) {
      return successLoading(this);
    }
    return orElse();
  }
}

abstract class _TaskListStateSuccessLoading extends TaskListState {
  const factory _TaskListStateSuccessLoading(
      {required final List<dynamic> tasks}) = _$TaskListStateSuccessLoadingImpl;
  const _TaskListStateSuccessLoading._() : super._();

  List<dynamic> get tasks;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListStateSuccessLoadingImplCopyWith<_$TaskListStateSuccessLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskListStateLoadingImplCopyWith<$Res> {
  factory _$$TaskListStateLoadingImplCopyWith(_$TaskListStateLoadingImpl value,
          $Res Function(_$TaskListStateLoadingImpl) then) =
      __$$TaskListStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> tasks});
}

/// @nodoc
class __$$TaskListStateLoadingImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListStateLoadingImpl>
    implements _$$TaskListStateLoadingImplCopyWith<$Res> {
  __$$TaskListStateLoadingImplCopyWithImpl(_$TaskListStateLoadingImpl _value,
      $Res Function(_$TaskListStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskListStateLoadingImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$TaskListStateLoadingImpl extends _TaskListStateLoading {
  const _$TaskListStateLoadingImpl({final List<dynamic> tasks = const <Task>[]})
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
    return 'TaskListState.loading(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListStateLoadingImplCopyWith<_$TaskListStateLoadingImpl>
      get copyWith =>
          __$$TaskListStateLoadingImplCopyWithImpl<_$TaskListStateLoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(String error) error,
  }) {
    return loading(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(String error)? error,
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
    required TResult Function(_TaskListStateIdle value) idle,
    required TResult Function(_TaskListStateSuccessLoading value)
        successLoading,
    required TResult Function(_TaskListStateLoading value) loading,
    required TResult Function(_TaskListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskListStateIdle value)? idle,
    TResult? Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult? Function(_TaskListStateLoading value)? loading,
    TResult? Function(_TaskListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskListStateIdle value)? idle,
    TResult Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult Function(_TaskListStateLoading value)? loading,
    TResult Function(_TaskListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TaskListStateLoading extends TaskListState {
  const factory _TaskListStateLoading({final List<dynamic> tasks}) =
      _$TaskListStateLoadingImpl;
  const _TaskListStateLoading._() : super._();

  List<dynamic> get tasks;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListStateLoadingImplCopyWith<_$TaskListStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskListStateErrorImplCopyWith<$Res> {
  factory _$$TaskListStateErrorImplCopyWith(_$TaskListStateErrorImpl value,
          $Res Function(_$TaskListStateErrorImpl) then) =
      __$$TaskListStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TaskListStateErrorImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListStateErrorImpl>
    implements _$$TaskListStateErrorImplCopyWith<$Res> {
  __$$TaskListStateErrorImplCopyWithImpl(_$TaskListStateErrorImpl _value,
      $Res Function(_$TaskListStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TaskListStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskListStateErrorImpl extends _TaskListStateError {
  const _$TaskListStateErrorImpl({this.error = ''}) : super._();

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'TaskListState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListStateErrorImplCopyWith<_$TaskListStateErrorImpl> get copyWith =>
      __$$TaskListStateErrorImplCopyWithImpl<_$TaskListStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> tasks) idle,
    required TResult Function(List<dynamic> tasks) successLoading,
    required TResult Function(List<dynamic> tasks) loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> tasks)? idle,
    TResult? Function(List<dynamic> tasks)? successLoading,
    TResult? Function(List<dynamic> tasks)? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> tasks)? idle,
    TResult Function(List<dynamic> tasks)? successLoading,
    TResult Function(List<dynamic> tasks)? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskListStateIdle value) idle,
    required TResult Function(_TaskListStateSuccessLoading value)
        successLoading,
    required TResult Function(_TaskListStateLoading value) loading,
    required TResult Function(_TaskListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskListStateIdle value)? idle,
    TResult? Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult? Function(_TaskListStateLoading value)? loading,
    TResult? Function(_TaskListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskListStateIdle value)? idle,
    TResult Function(_TaskListStateSuccessLoading value)? successLoading,
    TResult Function(_TaskListStateLoading value)? loading,
    TResult Function(_TaskListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TaskListStateError extends TaskListState {
  const factory _TaskListStateError({final String error}) =
      _$TaskListStateErrorImpl;
  const _TaskListStateError._() : super._();

  String get error;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListStateErrorImplCopyWith<_$TaskListStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
