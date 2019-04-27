import 'package:flutter/material.dart';
import 'package:coding_challenge/model/data.dart';
import 'package:coding_challenge/bloc/row_bloc.dart';
import 'package:coding_challenge/bloc/app/app_bloc_provider.dart';

class MyRow extends StatelessWidget {
  Data data;

  MyRow(@required this.data);

  @override
  Widget build(BuildContext context) {
    final rowBloc = AppBlocProvider.of(context).rowBloc;
    final detailViewBloc = AppBlocProvider.of(context).detailViewBloc;
    return StreamBuilder(
        stream: detailViewBloc.updateRow,
        builder: (context, snapshot) {
          if (snapshot?.data != null &&
              snapshot?.data?.position == data.position) {
            data = snapshot.data;
          }
          return GestureDetector(
            onTap: () => rowBloc.postRowData(data),
            child: Container(
              color: data.color,
              width: 100,
              height: double.infinity,
              child: Center(
                  child: Text(
                data.value.toString(),
                style: TextStyle(fontSize: 30),
              )),
            ),
          );
        });
  }
}
