import 'dart:async';
import 'package:coding_challenge/model/data.dart';


class RowBloc {
  final rowController = StreamController();

  Stream get getRow => rowController.stream;

  void postRowData(Data data) {
    rowController.sink.add(data);
  }

  void dispose() {
    rowController.close();
  }
}
