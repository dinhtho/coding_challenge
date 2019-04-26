import 'package:coding_challenge/model/data.dart';

class ListViewProvider {
  int currentPosition ;
  Data currentData;

  void updatePostiton(int pos,Data data) {
    currentPosition = pos;
    currentData = data;
  }
}