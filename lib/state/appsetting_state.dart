import 'package:equatable/equatable.dart';
import 'package:simple_viewer/model/appsetting_model.dart';

abstract class AppSettingState extends Equatable {
  final AppSettingModel? appSetting;
  final bool isError;
  const AppSettingState({this.appSetting, this.isError = false});
}

class AppSettingInitState extends AppSettingState {
  const AppSettingInitState();
  @override
  List<Object?> get props => [];
}

class AppSettingLoadedState extends AppSettingState {
  const AppSettingLoadedState({required AppSettingModel appSetting})
      : super(appSetting: appSetting);
  @override
  List<Object?> get props => [appSetting];
}

class AppSettingErrorState extends AppSettingState {
  const AppSettingErrorState({required AppSettingModel appSetting})
      : super(appSetting: appSetting, isError: true);
  @override
  List<Object?> get props => [appSetting, isError];
}
