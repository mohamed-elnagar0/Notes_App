import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimbleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change : $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('close : $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('crreat : $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    return;
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    return;
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    return;
  }
}
