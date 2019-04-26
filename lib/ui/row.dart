import 'package:flutter/material.dart';
import 'package:coding_challenge/model/data.dart';
import 'package:coding_challenge/bloc/list_view_bloc.dart';

class MyRow extends StatelessWidget {
  Data data;
  int pos;

  MyRow(@required this.data, @required this.pos);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () => bloc.updateItem(pos, data),
      child: StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return Container(
              color: data.color,
              width: 100,
              height: double.infinity,
              child: Center(
                  child: Text(
                data.value.toString(),
                style: TextStyle(fontSize: 30),
              )),
            );
          }),
    );
  }
}
