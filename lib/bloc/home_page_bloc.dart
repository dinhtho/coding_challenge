import 'dart:async';
import 'package:coding_challenge/model/data.dart';

class HomePageBloc {
  final detailViewController = StreamController.broadcast();
  final rowController = StreamController();

  Stream get updateRow => detailViewController.stream;

  Stream get getRow => rowController.stream;

  void updateRowData(Data data) {
    detailViewController.sink.add(data);
  }

  void postRowData(Data data) {
    rowController.sink.add(data);
  }

  void dispose() {
    detailViewController.close();
    rowController.close();
  }
}
