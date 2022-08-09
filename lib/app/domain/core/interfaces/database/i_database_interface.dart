import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tasklist/app/domain/core/entities/errors/system_error.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';

class AppDatabase {
  Future<String> getDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    final String databasePath =
        documentDirectory.path + '/${AppStrings.appDatabase}';

    return databasePath;
  }
}

abstract class IDatabaseInterface {
  Future<Either<SystemError, T>> createRecord<T>(Map<String, dynamic> data);
  Future<Either<SystemError, T>> updateRecord<T>(Map<String, dynamic> data);
  Future<Either<SystemError, List<T>>> fetchRecords<T>(String? id);
  Future<Either<SystemError, T>> fetchRecord<T>(String id);
  Future<Either<SystemError, bool>> removeRecord<T>(String id);
}
