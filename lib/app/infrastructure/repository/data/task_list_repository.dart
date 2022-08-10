import 'package:dartz/dartz.dart';
import 'package:tasklist/app/domain/core/entities/errors/system_error.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';
import 'package:tasklist/app/infrastructure/repository/data_store/sqflite/sqflite_database.dart';

class TaskListRepository implements IDatabaseInterface {
  static final SqfLiteDatabase<Map<String, Object?>> db =
      SqfLiteDatabase<Map<String, Object?>>();

  static List<String> _getColumns() {
    final Map<String, dynamic> list = TaskList().toJson();
    list.remove('tasks');
    return list.keys.map((String key) => key.toLowerCase().toString()).toList();
  }

  static Future<void> init() async {
    await db.init(_getColumns());
    final List<Map<String, dynamic>>? records = await db.findRecords();
    if (records == null || records.isEmpty) {
      Map<String, dynamic> defaultValue = defaultItems.first.toJson();
      defaultValue.remove('tasks');
      await db.saveData(defaultValue);
    }
  }

  @override
  Future<Either<SystemError, T>> createRecord<T>(
      Map<String, dynamic> data) async {
    data.remove('tasks');
    final Map<String, dynamic>? result = await db.saveData(data);

    if (result == null)
      return left(
        SystemError(),
      );
    return right(TaskList.fromJson(result) as T);
  }

  @override
  Future<Either<SystemError, T>> fetchRecord<T>(String id) async {
    final Map<String, dynamic>? result = await db.findRecord(id);
    if (result == null)
      return left(
        SystemError(),
      );
    return right(TaskList.fromJson(result) as T);
  }

  @override
  Future<Either<SystemError, List<T>>> fetchRecords<T>(String? id) async {
    final List<Map<String, Object?>>? results = await db.findRecords();
    if (results == null)
      return left(
        SystemError(),
      );

    return right(results
        .map(
          (Map<String, Object?> item) => TaskList.fromJson(item),
        )
        .toList() as List<T>);
  }

  @override
  Future<Either<SystemError, bool>> removeRecord<T>(String id) async {
    final bool? result = await db.deleteRecord(id);
    if (result == null)
      return left(
        SystemError(),
      );
    return right(result);
  }

  @override
  Future<Either<SystemError, T>> updateRecord<T>(
      Map<String, dynamic> data) async {
    final String listId = data['list_id'];
    final Map<String, dynamic>? result = await db.updateData(
      id: listId,
      data: data.remove('list_id'),
    );
    if (result == null)
      return left(
        SystemError(),
      );
    return right(TaskList.fromJson(result) as T);
  }
}
