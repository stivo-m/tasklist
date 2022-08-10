import 'package:tasklist/app/domain/core/interfaces/database/app_database_interface.dart';

abstract class AppDatabaseInterface<T> extends AppDBOperations<T> {
  Future<dynamic> findRecords({int? version});
  Future<dynamic> findRecord(String id, {int? version});
  Future<dynamic> saveData(Map<String, dynamic> data, {int? version});
  Future<dynamic> updateData({
    int? version,
    required Map<String, dynamic> data,
    required String id,
  });
  Future<bool> deleteRecord(String id, {int? version});
}
