import 'package:flutter/material.dart';
import 'package:coding_challenge/model/data.dart';
import 'package:coding_challenge/bloc/home_page_bloc.dart';
import 'package:coding_challenge/bloc/app/app_bloc_provider.dart';

class MyRow extends StatefulWidget {
  Data data;

  MyRow(@required this.data);

  @override
  State<StatefulWidget> createState() => MyRowState();
}

class MyRowState extends State<MyRow> {
  Data data;

  @override
  void initState() {
    super.initState();
    data = widget.data;
  }

  @override
  Widget build(BuildContext context) {
    var homePageBloc = AppBlocProvider.of(context).homePageBloc;

    return StreamBuilder(stream: homePageBloc.updateRow.skipWhile((e) {
      return e.position != data.position;
    }), builder: (context, snapshot) {
      return GestureDetector(
        onTap: () => homePageBloc.postRowData(data),
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
