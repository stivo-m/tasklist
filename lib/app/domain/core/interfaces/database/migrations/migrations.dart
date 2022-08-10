import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';

String initColumns({
  required String tableName,
  required List<String> columns,
}) {
  return '''
    CREATE TABLE $tableName (
        ${columns.map((String column) {
            if (column != 'id') {
              return '$column TEXT';
            } else {
              return '$column TEXT PRIMARY KEY';
            }
          }).toList().join(',')}
        version INTEGER
      )

   
    
  ''';
}

String migrateTaskLists({
  required String tableName,
  required List<String> columns,
}) {
  Map<String, dynamic> defaultValue = defaultItems.first.toJson();
  defaultValue.remove('tasks');
  return '''
      INSERT INTO $tableName (${columns.map((String column) => '$column TEXT').toList().join(',')})
            VALUES (${defaultValue.values.map((dynamic value) => value).join(',')})
      ''';
}
