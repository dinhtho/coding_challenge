import 'package:flutter/material.dart';
import 'package:coding_challenge/ui/row.dart';
import 'package:coding_challenge/model/data.dart';
import 'package:coding_challenge/ui/detail_item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Data> dataList = [
    Data(Colors.red, 0),
    Data(Colors.green, 0),
    Data(Colors.cyanAccent, 0),
    Data(Colors.yellow, 0),
    Data(Colors.purple, 0),
    Data(Colors.blue, 0),
    Data(Colors.amberAccent, 0),
    Data(Colors.blueGrey, 0),
    Data(Colors.pink, 0),
    Data(Colors.deepPurple, 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
                itemCount: dataList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return MyRow(dataList[i], i);
                }),
          ),
          DetailItem()
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
