import 'package:flutter/material.dart';
import 'package:coding_challenge/bloc/app/app_bloc_provider.dart';
import 'package:coding_challenge/model/data.dart';

class DetailItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DetailItemSate();
}

class DetailItemSate extends State<DetailItem> {
  Data data;

  @override
  Widget build(BuildContext context) {
    final rowBloc = AppBlocProvider.of(context).rowBloc;
    final detailViewBloc = AppBlocProvider.of(context).detailViewBloc;
    return StreamBuilder(
        stream: rowBloc.getRow,
        builder: (context, snapshot) {
          if (snapshot?.data != null) {
            data = snapshot.data;
            return GestureDetector(
              onTap: () {
                data.value++;
                detailViewBloc.updateRowData(data);
                setState(() {
                  data;
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 150,
                height: 150,
                color: data.color,
                child: Center(
                  child: Text(
                    data.value.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            );
          } else {
            return Container();
          }
        });
  }
}
