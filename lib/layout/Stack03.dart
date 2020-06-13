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

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        // alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment(1, -0.2),
            child: Icon(Icons.snooze, size: 40, color: Colors.white),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.backspace, size: 30, color: Colors.white),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Icon(Icons.cached, size: 60, color: Colors.white),
          ),
        ],
      ),
    ));
  }
}
