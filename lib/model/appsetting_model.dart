class AppSettingModel {
  final String baseUrl;

  const AppSettingModel({
    required this.baseUrl,
  });

  factory AppSettingModel.fromJson(Map<String, dynamic> json) {
    return AppSettingModel(
      baseUrl: json['baseUrl'] as String,
    );
  }
  factory AppSettingModel.updateSetting(AppSettingModel oldSetting,
      {required String url}) {
    return AppSettingModel(
      baseUrl: url.isNotEmpty ? url : oldSetting.baseUrl,
    );
  }

  Map<String, dynamic> toJson() => {
        'baseUrl': baseUrl,
      };
}
