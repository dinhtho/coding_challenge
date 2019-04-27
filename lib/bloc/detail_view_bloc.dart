import 'dart:async';
import 'package:coding_challenge/model/data.dart';


class DetailViewBloc {
  final detailViewController = StreamController.broadcast();

  Stream get updateRow => detailViewController.stream;

  void updateRowData(Data data) {
    detailViewController.sink.add(data);
  }

  void dispose() {
    detailViewController.close();
  }
}
