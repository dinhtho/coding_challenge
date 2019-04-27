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
  List<MaterialColor> colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.blueGrey,
    Colors.deepPurple,
    Colors.orange,
    Colors.lime,
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
                itemCount: colors.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return MyRow(Data(colors[i], 0, i));
                }),
          ),
          DetailItem()
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
