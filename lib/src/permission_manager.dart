import 'package:permission_handler/permission_handler.dart';

class PermissionManager {
  static Future<PermissionStatus> check(Permission permission) async {
    return await permission.status;
  }

  static Future<PermissionStatus> request(Permission permission) async {
    return await permission.request();
  }

  static Future<bool> openSettings() async {
    return await openAppSettings();
  }
}
