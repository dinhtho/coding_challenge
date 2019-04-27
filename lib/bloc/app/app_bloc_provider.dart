import 'package:flutter/material.dart';
import 'package:coding_challenge/bloc/app/app_bloc.dart';

class AppBlocProvider extends InheritedWidget {
  final AppBloc bloc;

  AppBlocProvider({this.bloc, child}) : super(child: child);

  static AppBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(AppBlocProvider)as AppBlocProvider).bloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
