import 'package:flutter/material.dart';
import 'ui/home_page.dart';
import 'package:coding_challenge/bloc/app/app_bloc.dart';
import 'package:coding_challenge/bloc/app/app_bloc_provider.dart';

void main() => {
  runApp(MyApp())};

class MyApp extends StatelessWidget {
  final appBloc = AppBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppBlocProvider(
          bloc: appBloc, child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
