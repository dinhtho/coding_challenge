import 'package:flutter/material.dart';
import 'package:coding_challenge/model/data.dart';
import 'package:coding_challenge/bloc/row_bloc.dart';
import 'package:coding_challenge/bloc/app/app_bloc_provider.dart';

class MyRow extends StatefulWidget {
  Data data;

  MyRow(@required this.data);

  @override
  State<StatefulWidget> createState() => MyRowState();
}

class MyRowState extends State<MyRow> {
  Stream stream;
  Data data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(onLayoutDone);
  }

  void onLayoutDone(_) {
    final detailViewBloc = AppBlocProvider.of(context).detailViewBloc;
    detailViewBloc.updateRow.listen((e) {
      if (e != null && e is Data && e.position == data.position) {
        setState(() {
          data = e;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    data = widget.data;
    final rowBloc = AppBlocProvider.of(context).rowBloc;

    return GestureDetector(
      onTap: () {
        rowBloc.postRowData(data);
      },
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
  }
}
