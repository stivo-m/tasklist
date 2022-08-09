import 'package:dartz/dartz.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/domain/core/entities/errors/system_error.dart';
import 'package:tasklist/app/infrastructure/repository/data/task_repository.dart';
import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';
import 'package:tasklist/app/infrastructure/repository/data/task_list_repository.dart';

class LocalDataStore implements IDatabaseInterface {
  @override
  Future<Either<SystemError, T>> createRecord<T>(Map<String, dynamic> data) {
    if (T is TaskList) return TaskListRepository().createRecord(data);
    return TaskRepository().createRecord(data);
  }

  @override
  Future<Either<SystemError, T>> fetchRecord<T>(String id) {
    if (T is TaskList) return TaskListRepository().fetchRecord(id);
    return TaskRepository().fetchRecord(id);
  }

  @override
  Future<Either<SystemError, List<T>>> fetchRecords<T>(String? id) {
    return TaskListRepository().fetchRecords(id);
  }

  @override
  Future<Either<SystemError, bool>> removeRecord<T>(String id) {
    if (T is TaskList) return TaskListRepository().removeRecord(id);
    throw UnimplementedError();
  }

  @override
  Future<Either<SystemError, T>> updateRecord<T>(Map<String, dynamic> data) {
    // TODO: implement updateRecord
    throw UnimplementedError();
  }
}
