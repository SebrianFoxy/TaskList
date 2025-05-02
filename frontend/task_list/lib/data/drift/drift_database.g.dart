// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _serverIdMeta =
      const VerificationMeta('serverId');
  @override
  late final GeneratedColumn<int> serverId = GeneratedColumn<int>(
      'server_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _taskMeta = const VerificationMeta('task');
  @override
  late final GeneratedColumn<String> task = GeneratedColumn<String>(
      'task', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firstTimeMeta =
      const VerificationMeta('firstTime');
  @override
  late final GeneratedColumn<String> firstTime = GeneratedColumn<String>(
      'first_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stateTaskMeta =
      const VerificationMeta('stateTask');
  @override
  late final GeneratedColumn<bool> stateTask = GeneratedColumn<bool>(
      'state_task', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("state_task" IN (0, 1))'));
  static const VerificationMeta _syncStatusMeta =
      const VerificationMeta('syncStatus');
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
      'sync_status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('pending'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, serverId, task, date, firstTime, stateTask, syncStatus];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<Task> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('server_id')) {
      context.handle(_serverIdMeta,
          serverId.isAcceptableOrUnknown(data['server_id']!, _serverIdMeta));
    }
    if (data.containsKey('task')) {
      context.handle(
          _taskMeta, task.isAcceptableOrUnknown(data['task']!, _taskMeta));
    } else if (isInserting) {
      context.missing(_taskMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('first_time')) {
      context.handle(_firstTimeMeta,
          firstTime.isAcceptableOrUnknown(data['first_time']!, _firstTimeMeta));
    } else if (isInserting) {
      context.missing(_firstTimeMeta);
    }
    if (data.containsKey('state_task')) {
      context.handle(_stateTaskMeta,
          stateTask.isAcceptableOrUnknown(data['state_task']!, _stateTaskMeta));
    } else if (isInserting) {
      context.missing(_stateTaskMeta);
    }
    if (data.containsKey('sync_status')) {
      context.handle(
          _syncStatusMeta,
          syncStatus.isAcceptableOrUnknown(
              data['sync_status']!, _syncStatusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Task(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      serverId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}server_id']),
      task: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      firstTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_time'])!,
      stateTask: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}state_task'])!,
      syncStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sync_status'])!,
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class Task extends DataClass implements Insertable<Task> {
  final int id;
  final int? serverId;
  final String task;
  final String date;
  final String firstTime;
  final bool stateTask;
  final String syncStatus;
  const Task(
      {required this.id,
      this.serverId,
      required this.task,
      required this.date,
      required this.firstTime,
      required this.stateTask,
      required this.syncStatus});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || serverId != null) {
      map['server_id'] = Variable<int>(serverId);
    }
    map['task'] = Variable<String>(task);
    map['date'] = Variable<String>(date);
    map['first_time'] = Variable<String>(firstTime);
    map['state_task'] = Variable<bool>(stateTask);
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      serverId: serverId == null && nullToAbsent
          ? const Value.absent()
          : Value(serverId),
      task: Value(task),
      date: Value(date),
      firstTime: Value(firstTime),
      stateTask: Value(stateTask),
      syncStatus: Value(syncStatus),
    );
  }

  factory Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      serverId: serializer.fromJson<int?>(json['serverId']),
      task: serializer.fromJson<String>(json['task']),
      date: serializer.fromJson<String>(json['date']),
      firstTime: serializer.fromJson<String>(json['firstTime']),
      stateTask: serializer.fromJson<bool>(json['stateTask']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'serverId': serializer.toJson<int?>(serverId),
      'task': serializer.toJson<String>(task),
      'date': serializer.toJson<String>(date),
      'firstTime': serializer.toJson<String>(firstTime),
      'stateTask': serializer.toJson<bool>(stateTask),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  Task copyWith(
          {int? id,
          Value<int?> serverId = const Value.absent(),
          String? task,
          String? date,
          String? firstTime,
          bool? stateTask,
          String? syncStatus}) =>
      Task(
        id: id ?? this.id,
        serverId: serverId.present ? serverId.value : this.serverId,
        task: task ?? this.task,
        date: date ?? this.date,
        firstTime: firstTime ?? this.firstTime,
        stateTask: stateTask ?? this.stateTask,
        syncStatus: syncStatus ?? this.syncStatus,
      );
  Task copyWithCompanion(TasksCompanion data) {
    return Task(
      id: data.id.present ? data.id.value : this.id,
      serverId: data.serverId.present ? data.serverId.value : this.serverId,
      task: data.task.present ? data.task.value : this.task,
      date: data.date.present ? data.date.value : this.date,
      firstTime: data.firstTime.present ? data.firstTime.value : this.firstTime,
      stateTask: data.stateTask.present ? data.stateTask.value : this.stateTask,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('serverId: $serverId, ')
          ..write('task: $task, ')
          ..write('date: $date, ')
          ..write('firstTime: $firstTime, ')
          ..write('stateTask: $stateTask, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, serverId, task, date, firstTime, stateTask, syncStatus);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.serverId == this.serverId &&
          other.task == this.task &&
          other.date == this.date &&
          other.firstTime == this.firstTime &&
          other.stateTask == this.stateTask &&
          other.syncStatus == this.syncStatus);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<int?> serverId;
  final Value<String> task;
  final Value<String> date;
  final Value<String> firstTime;
  final Value<bool> stateTask;
  final Value<String> syncStatus;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.serverId = const Value.absent(),
    this.task = const Value.absent(),
    this.date = const Value.absent(),
    this.firstTime = const Value.absent(),
    this.stateTask = const Value.absent(),
    this.syncStatus = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    this.serverId = const Value.absent(),
    required String task,
    required String date,
    required String firstTime,
    required bool stateTask,
    this.syncStatus = const Value.absent(),
  })  : task = Value(task),
        date = Value(date),
        firstTime = Value(firstTime),
        stateTask = Value(stateTask);
  static Insertable<Task> custom({
    Expression<int>? id,
    Expression<int>? serverId,
    Expression<String>? task,
    Expression<String>? date,
    Expression<String>? firstTime,
    Expression<bool>? stateTask,
    Expression<String>? syncStatus,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (serverId != null) 'server_id': serverId,
      if (task != null) 'task': task,
      if (date != null) 'date': date,
      if (firstTime != null) 'first_time': firstTime,
      if (stateTask != null) 'state_task': stateTask,
      if (syncStatus != null) 'sync_status': syncStatus,
    });
  }

  TasksCompanion copyWith(
      {Value<int>? id,
      Value<int?>? serverId,
      Value<String>? task,
      Value<String>? date,
      Value<String>? firstTime,
      Value<bool>? stateTask,
      Value<String>? syncStatus}) {
    return TasksCompanion(
      id: id ?? this.id,
      serverId: serverId ?? this.serverId,
      task: task ?? this.task,
      date: date ?? this.date,
      firstTime: firstTime ?? this.firstTime,
      stateTask: stateTask ?? this.stateTask,
      syncStatus: syncStatus ?? this.syncStatus,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (serverId.present) {
      map['server_id'] = Variable<int>(serverId.value);
    }
    if (task.present) {
      map['task'] = Variable<String>(task.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (firstTime.present) {
      map['first_time'] = Variable<String>(firstTime.value);
    }
    if (stateTask.present) {
      map['state_task'] = Variable<bool>(stateTask.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('serverId: $serverId, ')
          ..write('task: $task, ')
          ..write('date: $date, ')
          ..write('firstTime: $firstTime, ')
          ..write('stateTask: $stateTask, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }
}

class TasksViewData extends DataClass {
  final String task;
  const TasksViewData({required this.task});
  factory TasksViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TasksViewData(
      task: serializer.fromJson<String>(json['task']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'task': serializer.toJson<String>(task),
    };
  }

  TasksViewData copyWith({String? task}) => TasksViewData(
        task: task ?? this.task,
      );
  @override
  String toString() {
    return (StringBuffer('TasksViewData(')
          ..write('task: $task')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => task.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TasksViewData && other.task == this.task);
}

class $TasksViewView extends ViewInfo<$TasksViewView, TasksViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$Database attachedDatabase;
  $TasksViewView(this.attachedDatabase, [this._alias]);
  $TasksTable get tasks => attachedDatabase.tasks.createAlias('t0');
  @override
  List<GeneratedColumn> get $columns => [task];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'tasks_view';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $TasksViewView get asDslTable => this;
  @override
  TasksViewData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TasksViewData(
      task: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task'])!,
    );
  }

  late final GeneratedColumn<String> task = GeneratedColumn<String>(
      'task', aliasedName, false,
      generatedAs: GeneratedAs(tasks.task, false), type: DriftSqlType.string);
  @override
  $TasksViewView createAlias(String alias) {
    return $TasksViewView(attachedDatabase, alias);
  }

  @override
  Query? get query =>
      (attachedDatabase.selectOnly(tasks)..addColumns($columns));
  @override
  Set<String> get readTables => const {'tasks'};
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $TasksTable tasks = $TasksTable(this);
  late final $TasksViewView tasksView = $TasksViewView(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasks, tasksView];
}

typedef $$TasksTableCreateCompanionBuilder = TasksCompanion Function({
  Value<int> id,
  Value<int?> serverId,
  required String task,
  required String date,
  required String firstTime,
  required bool stateTask,
  Value<String> syncStatus,
});
typedef $$TasksTableUpdateCompanionBuilder = TasksCompanion Function({
  Value<int> id,
  Value<int?> serverId,
  Value<String> task,
  Value<String> date,
  Value<String> firstTime,
  Value<bool> stateTask,
  Value<String> syncStatus,
});

class $$TasksTableFilterComposer extends Composer<_$Database, $TasksTable> {
  $$TasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get serverId => $composableBuilder(
      column: $table.serverId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get task => $composableBuilder(
      column: $table.task, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstTime => $composableBuilder(
      column: $table.firstTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get stateTask => $composableBuilder(
      column: $table.stateTask, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get syncStatus => $composableBuilder(
      column: $table.syncStatus, builder: (column) => ColumnFilters(column));
}

class $$TasksTableOrderingComposer extends Composer<_$Database, $TasksTable> {
  $$TasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get serverId => $composableBuilder(
      column: $table.serverId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get task => $composableBuilder(
      column: $table.task, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstTime => $composableBuilder(
      column: $table.firstTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get stateTask => $composableBuilder(
      column: $table.stateTask, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get syncStatus => $composableBuilder(
      column: $table.syncStatus, builder: (column) => ColumnOrderings(column));
}

class $$TasksTableAnnotationComposer extends Composer<_$Database, $TasksTable> {
  $$TasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get serverId =>
      $composableBuilder(column: $table.serverId, builder: (column) => column);

  GeneratedColumn<String> get task =>
      $composableBuilder(column: $table.task, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get firstTime =>
      $composableBuilder(column: $table.firstTime, builder: (column) => column);

  GeneratedColumn<bool> get stateTask =>
      $composableBuilder(column: $table.stateTask, builder: (column) => column);

  GeneratedColumn<String> get syncStatus => $composableBuilder(
      column: $table.syncStatus, builder: (column) => column);
}

class $$TasksTableTableManager extends RootTableManager<
    _$Database,
    $TasksTable,
    Task,
    $$TasksTableFilterComposer,
    $$TasksTableOrderingComposer,
    $$TasksTableAnnotationComposer,
    $$TasksTableCreateCompanionBuilder,
    $$TasksTableUpdateCompanionBuilder,
    (Task, BaseReferences<_$Database, $TasksTable, Task>),
    Task,
    PrefetchHooks Function()> {
  $$TasksTableTableManager(_$Database db, $TasksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> serverId = const Value.absent(),
            Value<String> task = const Value.absent(),
            Value<String> date = const Value.absent(),
            Value<String> firstTime = const Value.absent(),
            Value<bool> stateTask = const Value.absent(),
            Value<String> syncStatus = const Value.absent(),
          }) =>
              TasksCompanion(
            id: id,
            serverId: serverId,
            task: task,
            date: date,
            firstTime: firstTime,
            stateTask: stateTask,
            syncStatus: syncStatus,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> serverId = const Value.absent(),
            required String task,
            required String date,
            required String firstTime,
            required bool stateTask,
            Value<String> syncStatus = const Value.absent(),
          }) =>
              TasksCompanion.insert(
            id: id,
            serverId: serverId,
            task: task,
            date: date,
            firstTime: firstTime,
            stateTask: stateTask,
            syncStatus: syncStatus,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TasksTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $TasksTable,
    Task,
    $$TasksTableFilterComposer,
    $$TasksTableOrderingComposer,
    $$TasksTableAnnotationComposer,
    $$TasksTableCreateCompanionBuilder,
    $$TasksTableUpdateCompanionBuilder,
    (Task, BaseReferences<_$Database, $TasksTable, Task>),
    Task,
    PrefetchHooks Function()>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$TasksTableTableManager get tasks =>
      $$TasksTableTableManager(_db, _db.tasks);
}
