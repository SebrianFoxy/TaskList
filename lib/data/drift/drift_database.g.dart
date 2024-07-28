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
  static const VerificationMeta _secondTimeMeta =
      const VerificationMeta('secondTime');
  @override
  late final GeneratedColumn<String> secondTime = GeneratedColumn<String>(
      'second_time', aliasedName, false,
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
  @override
  List<GeneratedColumn> get $columns =>
      [id, task, date, firstTime, secondTime, stateTask];
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
    if (data.containsKey('second_time')) {
      context.handle(
          _secondTimeMeta,
          secondTime.isAcceptableOrUnknown(
              data['second_time']!, _secondTimeMeta));
    } else if (isInserting) {
      context.missing(_secondTimeMeta);
    }
    if (data.containsKey('state_task')) {
      context.handle(_stateTaskMeta,
          stateTask.isAcceptableOrUnknown(data['state_task']!, _stateTaskMeta));
    } else if (isInserting) {
      context.missing(_stateTaskMeta);
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
      task: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      firstTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_time'])!,
      secondTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}second_time'])!,
      stateTask: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}state_task'])!,
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class Task extends DataClass implements Insertable<Task> {
  final int id;
  final String task;
  final String date;
  final String firstTime;
  final String secondTime;
  final bool stateTask;
  const Task(
      {required this.id,
      required this.task,
      required this.date,
      required this.firstTime,
      required this.secondTime,
      required this.stateTask});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['task'] = Variable<String>(task);
    map['date'] = Variable<String>(date);
    map['first_time'] = Variable<String>(firstTime);
    map['second_time'] = Variable<String>(secondTime);
    map['state_task'] = Variable<bool>(stateTask);
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      task: Value(task),
      date: Value(date),
      firstTime: Value(firstTime),
      secondTime: Value(secondTime),
      stateTask: Value(stateTask),
    );
  }

  factory Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      task: serializer.fromJson<String>(json['task']),
      date: serializer.fromJson<String>(json['date']),
      firstTime: serializer.fromJson<String>(json['firstTime']),
      secondTime: serializer.fromJson<String>(json['secondTime']),
      stateTask: serializer.fromJson<bool>(json['stateTask']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'task': serializer.toJson<String>(task),
      'date': serializer.toJson<String>(date),
      'firstTime': serializer.toJson<String>(firstTime),
      'secondTime': serializer.toJson<String>(secondTime),
      'stateTask': serializer.toJson<bool>(stateTask),
    };
  }

  Task copyWith(
          {int? id,
          String? task,
          String? date,
          String? firstTime,
          String? secondTime,
          bool? stateTask}) =>
      Task(
        id: id ?? this.id,
        task: task ?? this.task,
        date: date ?? this.date,
        firstTime: firstTime ?? this.firstTime,
        secondTime: secondTime ?? this.secondTime,
        stateTask: stateTask ?? this.stateTask,
      );
  Task copyWithCompanion(TasksCompanion data) {
    return Task(
      id: data.id.present ? data.id.value : this.id,
      task: data.task.present ? data.task.value : this.task,
      date: data.date.present ? data.date.value : this.date,
      firstTime: data.firstTime.present ? data.firstTime.value : this.firstTime,
      secondTime:
          data.secondTime.present ? data.secondTime.value : this.secondTime,
      stateTask: data.stateTask.present ? data.stateTask.value : this.stateTask,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('task: $task, ')
          ..write('date: $date, ')
          ..write('firstTime: $firstTime, ')
          ..write('secondTime: $secondTime, ')
          ..write('stateTask: $stateTask')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, task, date, firstTime, secondTime, stateTask);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.task == this.task &&
          other.date == this.date &&
          other.firstTime == this.firstTime &&
          other.secondTime == this.secondTime &&
          other.stateTask == this.stateTask);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<String> task;
  final Value<String> date;
  final Value<String> firstTime;
  final Value<String> secondTime;
  final Value<bool> stateTask;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.task = const Value.absent(),
    this.date = const Value.absent(),
    this.firstTime = const Value.absent(),
    this.secondTime = const Value.absent(),
    this.stateTask = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    required String task,
    required String date,
    required String firstTime,
    required String secondTime,
    required bool stateTask,
  })  : task = Value(task),
        date = Value(date),
        firstTime = Value(firstTime),
        secondTime = Value(secondTime),
        stateTask = Value(stateTask);
  static Insertable<Task> custom({
    Expression<int>? id,
    Expression<String>? task,
    Expression<String>? date,
    Expression<String>? firstTime,
    Expression<String>? secondTime,
    Expression<bool>? stateTask,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (task != null) 'task': task,
      if (date != null) 'date': date,
      if (firstTime != null) 'first_time': firstTime,
      if (secondTime != null) 'second_time': secondTime,
      if (stateTask != null) 'state_task': stateTask,
    });
  }

  TasksCompanion copyWith(
      {Value<int>? id,
      Value<String>? task,
      Value<String>? date,
      Value<String>? firstTime,
      Value<String>? secondTime,
      Value<bool>? stateTask}) {
    return TasksCompanion(
      id: id ?? this.id,
      task: task ?? this.task,
      date: date ?? this.date,
      firstTime: firstTime ?? this.firstTime,
      secondTime: secondTime ?? this.secondTime,
      stateTask: stateTask ?? this.stateTask,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
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
    if (secondTime.present) {
      map['second_time'] = Variable<String>(secondTime.value);
    }
    if (stateTask.present) {
      map['state_task'] = Variable<bool>(stateTask.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('task: $task, ')
          ..write('date: $date, ')
          ..write('firstTime: $firstTime, ')
          ..write('secondTime: $secondTime, ')
          ..write('stateTask: $stateTask')
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
  required String task,
  required String date,
  required String firstTime,
  required String secondTime,
  required bool stateTask,
});
typedef $$TasksTableUpdateCompanionBuilder = TasksCompanion Function({
  Value<int> id,
  Value<String> task,
  Value<String> date,
  Value<String> firstTime,
  Value<String> secondTime,
  Value<bool> stateTask,
});

class $$TasksTableTableManager extends RootTableManager<
    _$Database,
    $TasksTable,
    Task,
    $$TasksTableFilterComposer,
    $$TasksTableOrderingComposer,
    $$TasksTableCreateCompanionBuilder,
    $$TasksTableUpdateCompanionBuilder> {
  $$TasksTableTableManager(_$Database db, $TasksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TasksTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TasksTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> task = const Value.absent(),
            Value<String> date = const Value.absent(),
            Value<String> firstTime = const Value.absent(),
            Value<String> secondTime = const Value.absent(),
            Value<bool> stateTask = const Value.absent(),
          }) =>
              TasksCompanion(
            id: id,
            task: task,
            date: date,
            firstTime: firstTime,
            secondTime: secondTime,
            stateTask: stateTask,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String task,
            required String date,
            required String firstTime,
            required String secondTime,
            required bool stateTask,
          }) =>
              TasksCompanion.insert(
            id: id,
            task: task,
            date: date,
            firstTime: firstTime,
            secondTime: secondTime,
            stateTask: stateTask,
          ),
        ));
}

class $$TasksTableFilterComposer
    extends FilterComposer<_$Database, $TasksTable> {
  $$TasksTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get task => $state.composableBuilder(
      column: $state.table.task,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get firstTime => $state.composableBuilder(
      column: $state.table.firstTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get secondTime => $state.composableBuilder(
      column: $state.table.secondTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get stateTask => $state.composableBuilder(
      column: $state.table.stateTask,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TasksTableOrderingComposer
    extends OrderingComposer<_$Database, $TasksTable> {
  $$TasksTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get task => $state.composableBuilder(
      column: $state.table.task,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get firstTime => $state.composableBuilder(
      column: $state.table.firstTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get secondTime => $state.composableBuilder(
      column: $state.table.secondTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get stateTask => $state.composableBuilder(
      column: $state.table.stateTask,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$TasksTableTableManager get tasks =>
      $$TasksTableTableManager(_db, _db.tasks);
}
