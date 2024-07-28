import 'dart:io';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:drift/native.dart';

part 'drift_database.g.dart';

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get task => text()();
  TextColumn get date => text()();
  TextColumn get firstTime => text()();
  TextColumn get secondTime => text()();
  BoolColumn get stateTask => boolean()();
}

abstract class TasksView extends View {
  Tasks get tasks;

  @override
  Query as() => select([tasks.task]).from(tasks);
}

@DriftDatabase(tables: [Tasks], views: [TasksView])
class Database extends _$Database {
  Database._internal() : super(_openConnection());

  static final Database instance = Database._internal();

  @override
  int get schemaVersion => 2;

  Future<List<Task>> allTasks() {
    return select(tasks).get();
  }

  Future<int> deleteTaskById(int id) {
    return (delete(tasks)..where((t) => t.id.equals(id))).go();
  }

  Future<List<Task>> searchTasks(String query) {
    return (select(tasks)..where((t) => t.task.contains(query))).get();
  }

  Future<List<Task>> taskOfDay() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    return (select(tasks)
      ..where((t) => t.date.equals(today.toString().split(' ')[0]))
      ..orderBy([(t) => OrderingTerm(expression: t.firstTime, mode: OrderingMode.asc)]))
        .get();
  }

  Future<List<Task>> taskMyDay(thisDay) {
    return (select(tasks)
      ..where((t) => t.date.equals(thisDay.toString().split(' ')[0]))
      ..orderBy([(t) => OrderingTerm(expression: t.firstTime, mode: OrderingMode.asc)]))
        .get();
  }

  Future<void> toggleTaskState(int id) async {
    final task = await (select(tasks)..where((t) => t.id.equals(id))).getSingle();

    final newState = !task.stateTask;

    await (update(tasks)
      ..where((t) => t.id.equals(id))
    ).write(TasksCompanion(stateTask: Value(newState)));
  }

}

// Future<void> deleteDatabase() async {
//   final dbFolder = await getApplicationDocumentsDirectory();
//   final file = File(p.join(dbFolder.path, 'db.sqlite'));
//   if (await file.exists()) {
//     await file.delete();
//   }
// }

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    print(dbFolder);
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
