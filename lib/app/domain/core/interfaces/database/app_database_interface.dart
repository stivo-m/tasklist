import 'package:sqflite/sqflite.dart';
import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';
import 'package:tasklist/app/domain/core/interfaces/database/migrations/migrations.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';

abstract class AppDBOperations<T> {
  AppDBOperations({
    this.dbName = AppStrings.appDatabase,
    this.tableName = AppStrings.taskListTableName,
  });

  List<String> columns = <String>[];
  late Database database;
  final String dbName;
  final String tableName;

  Future<void> init(List<String> columnList) async {
    columns = columnList;
    // Get a location using getDatabasesPath
    String path = await AppDatabase().getDatabase();

    // wait for database initialization
    database = await openDatabase(
      path,
      onCreate: _onCreate,
      onUpgrade: _onUpGrade,
      onDowngrade: _onDownGrade,
      version: 1,
    );
  }

  void _onCreate(Database db, int version) {
    db.execute(_initAll());
  }

  void _onUpGrade(Database db, int current, int newVersion) {
    db.execute(_initAll());
  }

  void _onDownGrade(Database db, int current, int newVersion) {
    db.execute(_initAll());
  }

  //initialize all the columns and tables
  String _initAll() {
    return initColumns(tableName: tableName, columns: columns);
  }
}
