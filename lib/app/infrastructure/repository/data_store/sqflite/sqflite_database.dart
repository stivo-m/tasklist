import 'package:sqflite/sqflite.dart';
import 'package:tasklist/app/domain/core/interfaces/database/app_db_interface.dart';

class SqfLiteDatabase<T> extends AppDatabaseInterface<T> {
  @override
  List<String> get columns => super.columns;

  @override
  Future<bool> deleteRecord(String id, {int? version}) async {
    return await database.delete(
          tableName,
          where: 'uuid = ?',
          whereArgs: <dynamic>[id],
        ) !=
        0;
  }

  @override
  Future<dynamic> findRecord(String id, {int? version}) async {
    List<Map<String, Object?>> mapData = await database.query(
      tableName,
      where: 'uuid = ?',
      whereArgs: <dynamic>[id],
      columns: columns,
      limit: 1,
    );
    return mapData.first;
  }

  @override
  Future<dynamic> findRecords({int? version}) async {
    List<Map<String, Object?>> mapData = await database.query(
      tableName,
      columns: columns,
    );
    print('Found Data');

    return mapData;
  }

  @override
  Future<dynamic> saveData(Map<String, dynamic> data, {int? version}) async {
    await database.insert(
      tableName,
      data,
    );

    return findRecord(data['uuid']);
  }

  @override
  Future<dynamic> updateData({
    int? version,
    required Map<String, dynamic> data,
    required String id,
  }) async {
    await database.update(
      tableName,
      data,
      where: 'uuid = ?',
      whereArgs: <dynamic>[id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return findRecord(id.toString());
  }
}
