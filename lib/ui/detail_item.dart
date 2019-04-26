import 'package:flutter/material.dart';
import 'package:coding_challenge/bloc/list_view_bloc.dart';
import 'package:coding_challenge/bloc/list_view_provider.dart';
import 'package:coding_challenge/model/data.dart';

class DetailItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DetailItemSate();
}

class DetailItemSate extends State<DetailItem> {
  Data data;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder(
        stream: bloc.getCurrentItem,
        builder: (context, snapshot) {
          if (snapshot?.data?.currentData != null) {
            data = snapshot.data.currentData;
            return GestureDetector(
              onTap: () {
                data.value++;
                setState(() {
                  data;
                });
                bloc.updateItem(bloc.listViewProvider.currentPosition, data);
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
