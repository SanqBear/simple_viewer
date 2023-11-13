class UserSettingModel {
  final String baseUrl;

  UserSettingModel({
    required this.baseUrl,
  });
  factory UserSettingModel.fromJson(Map<String, dynamic> json) {
    return UserSettingModel(
      baseUrl: json["baseUrl"],
    );
  }
}
