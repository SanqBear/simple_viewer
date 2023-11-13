import "dart:io";
import "package:simple_viewer/model/user_setting.dart";

class UserSettingService {
  static final UserSettingService instance = UserSettingService._internal();
  factory UserSettingService() => instance;
  UserSettingService._internal();

  Future<UserSettingModel?> fetchUserSetting() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return "success";
    } on HttpException {
      return null;
    } catch (error) {
      return null;
    }
  }
}
