import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class CounterObserver extends BlocObserver {
  CounterObserver();
  var logger = Logger();

  @override
  void onChange(BlocBase bloc, Change change) {
    logger.i('${bloc.runtimeType}: $change');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e('Error: $error');
    super.onError(bloc, error, stackTrace);
  }
}
