import 'package:localstorage/localstorage.dart';
import 'package:simple_viewer/model/appsetting_model.dart';

class AppSettingService {
  static final AppSettingService instance = AppSettingService._internal();
  factory AppSettingService() => instance;
  AppSettingService._internal();
  final LocalStorage storage = LocalStorage('simple_viewer');

  Future<AppSettingModel?> fetchAppSettingFromLocalStorage() async {
    await storage.ready;
    final Map<String, dynamic>? appSetting =
        await storage.getItem('appSetting');
    if (appSetting == null) {
      return null;
    } else {
      return AppSettingModel.fromJson(appSetting);
    }
  }

  Future<AppSettingModel> updateAppSetting(AppSettingModel? currentAppSetting,
      {required String url}) async {
    AppSettingModel updatedAppSetting;
    await storage.ready;

    if (currentAppSetting == null) {
      updatedAppSetting = AppSettingModel(baseUrl: url);
    } else {
      updatedAppSetting =
          AppSettingModel.updateSetting(currentAppSetting, url: url);
    }
    await storage.setItem('appSetting', updatedAppSetting.toJson());
    return updatedAppSetting;
  }
}
