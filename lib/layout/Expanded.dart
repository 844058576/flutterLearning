import 'package:flutter/material.dart';
import '../res/listData.dart';

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

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(
            Icons.search,
            color: Colors.black,
          ),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(
            Icons.home,
            color: Colors.red,
          ),
        ),
          Expanded(
          flex: 1,
          child: IconContainer(
            Icons.send,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
          child: Icon(
        this.icon,
        size: this.size,
        color: Colors.white,
      )),
    );
  }
}
