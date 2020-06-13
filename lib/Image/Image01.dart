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
       
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(150),
          // )
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage("http://i0.hdslb.com/bfs/archive/f17b4364a16400d266d8332956a5411c30bf7726.jpg@400w_250h.webp"),
            fit: BoxFit.fill,
          )
        ),
        // padding: EdgeInsets.fromLTRB(10, 30, 5, 0)

        // transform: Matrix4.translationValues(100, 0, 0),
        // transform: Matrix4.rotationZ(-0.3),
        // transform: Matrix4.diagonal3Values(1.2, 1, 0.9),
      ),
    );
  }
}
