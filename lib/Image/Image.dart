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
          title: Text('flutter demo'),
        ),
        body: Center(
          child: HomeContent(),
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3892521478,1695688217&fm=26&gp=0.jpg",
          // alignment: Alignment.topRight,
          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,
          // fit: BoxFit.fill,
          repeat: ImageRepeat.repeatY,
        ),
        height: 800.0,
        width: 400.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        // padding: EdgeInsets.fromLTRB(10, 30, 5, 0)

        // transform: Matrix4.translationValues(100, 0, 0),
        // transform: Matrix4.rotationZ(-0.3),
        // transform: Matrix4.diagonal3Values(1.2, 1, 0.9),
      ),
    );
  }
}
