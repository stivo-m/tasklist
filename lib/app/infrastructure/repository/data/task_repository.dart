import 'package:objectdb/objectdb.dart';
import 'package:dartz/dartz.dart';
import 'package:objectdb/src/objectdb_storage_filesystem.dart';
import 'package:tasklist/app/domain/core/entities/errors/system_error.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_item.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';
import 'package:tasklist/app/infrastructure/repository/data/task_list_repository.dart';

class TaskRepository implements IDatabaseInterface {
  @override
  Future<Either<SystemError, T>> createRecord<T>(
    Map<String, dynamic> data,
  ) async {
    final String path = await AppDatabase().getDatabase();
    final ObjectDB db = await ObjectDB(FileSystemStorage(path));
    try {
      final String listId = data['list_id'];
      final Map<dynamic, dynamic> taskList =
          await db.first(<String, dynamic>{'id': listId});

      final TaskList taskListItem =
          TaskList.fromJson(taskList as Map<String, dynamic>);

      final Map<dynamic, dynamic> addedTask =
          await db.createItem(data.remove('list_id'));

      final TaskItem recordData =
          TaskItem.fromJson(addedTask as Map<String, dynamic>);

      taskListItem.tasks?.add(recordData);

      TaskListRepository().updateRecord(taskListItem.toJson());

      return right(recordData as T);
    } catch (e, trace) {
      return left(
        SystemError(
          title: 'An error occurred',
          description: e.toString(),
          stackTrace: trace.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<SystemError, T>> fetchRecord<T>(String id) async {
    try {
      final String path = await AppDatabase().getDatabase();
      final ObjectDB db = await ObjectDB(FileSystemStorage(path));
      final List<Map<dynamic, dynamic>> result = await db.find(
        <String, dynamic>{'id': ObjectId.fromHexString(id)},
      );
      final TaskList taskList = TaskList.fromJson(
        result as Map<String, dynamic>,
      );

      return right(taskList as T);
    } catch (e, trace) {
      return left(
        SystemError(
          title: 'An error occurred',
          description: e.toString(),
          stackTrace: trace.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<SystemError, List<T>>> fetchRecords<T>(_) async {
    try {
      final String path = await AppDatabase().getDatabase();
      final ObjectDB db = await ObjectDB(FileSystemStorage(path));
      final List<Map<dynamic, dynamic>> result = await db.find();

      return right(result
          .map(
            (Map<dynamic, dynamic> item) =>
                TaskList.fromJson(item as Map<String, dynamic>),
          )
          .toList() as List<T>);
    } catch (e, trace) {
      return left(
        SystemError(
          title: 'An error occurred',
          description: e.toString(),
          stackTrace: trace.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<SystemError, bool>> removeRecord<T>(String id) async {
    try {
      final String path = await AppDatabase().getDatabase();
      final ObjectDB db = await ObjectDB(FileSystemStorage(path));
      final int? result = await db.remove(
        <String, dynamic>{'id': ObjectId.fromHexString(id)},
      );

      return right(result != null && result != 0);
    } catch (e, trace) {
      return left(
        SystemError(
          title: 'An error occurred',
          description: e.toString(),
          stackTrace: trace.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<SystemError, T>> updateRecord<T>(Map<String, dynamic> data) {
    // TODO: implement updateRecord
    throw UnimplementedError();
  }
}
