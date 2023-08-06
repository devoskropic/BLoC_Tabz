import 'dart:developer';
import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    log("$bloc was Created.", name: "Observer");
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    log("$bloc was Closed.", name: "Observer");
    super.onClose(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('{$bloc}: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log("$error");
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    log("$change");
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // log("$transition");
    super.onTransition(bloc, transition);
  }
}
