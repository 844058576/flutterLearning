import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo1'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatefulWidget {
  LayoutDemo({Key key}) : super(key: key);

  @override
  _LayoutDemoState createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
            children: this.list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList()),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() {
              this.list.add('新增数据1');
              this.list.add('新增数据2');
            });
          },
        )
      ],
    );
  }
}
