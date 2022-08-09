// ignore_for_file: avoid_classes_with_only_static_members

import 'package:tasklist/app/domain/core/interfaces/database/i_database_interface.dart';
import 'package:tasklist/app/infrastructure/repository/data_store/local_data_store.dart';

class DataRepository {
  static IDatabaseInterface getRepository() {
    return LocalDataStore();
  }
}
