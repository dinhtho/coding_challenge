import 'dart:async';
import 'package:coding_challenge/model/data.dart';
import 'package:coding_challenge/bloc/list_view_provider.dart';

class ListViewBloc {
  final listViewController = StreamController();
  ListViewProvider listViewProvider = ListViewProvider();

  Stream get getCurrentItem => listViewController.stream;

  void updateItem(int pos, Data data) {
    listViewProvider.updatePostiton(pos, data);
    listViewController.sink.add(listViewProvider);
  }

  void dispose() {
    listViewController.close();
  }
}

final bloc = ListViewBloc();
