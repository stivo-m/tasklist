import 'package:permission_handler/permission_handler.dart';

Future<dynamic> requestPermissions() async {
  return await Permission.storage.request();
}
