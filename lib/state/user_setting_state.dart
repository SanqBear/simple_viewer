import 'package:equatable/equatable.dart';
import 'package:simple_viewer/model/user_setting.dart';

abstract class UserSettingState extends Equatable {
  final UserSettingModel? setting;
  const UserSettingState({this.setting});
}

class UserSettingInitialState extends UserSettingState {
  @override
  List<Object?> get props => [];
}

class UserSettingLoadingState extends UserSettingState {
  @override
  List<Object?> get props => [];
}

class UserSettingSuccessState extends UserSettingState {
  const UserSettingSuccessState({required UserSettingModel setting})
      : super(setting: setting);
  @override
  List<Object?> get props => [setting];
}

class UserSettingFailureState extends UserSettingState {
  final String errorMessage;
  const UserSettingFailureState(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
