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
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 180.0,
              color: Colors.deepOrange,
              child: ListView(
                children: <Widget>[
                  Image.network(
                      "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2011819838,453690051&fm=26&gp=0.jpg"),
                  Text('我的一个文本'),
                ],
              ),
            ),
            Container(
              width: 180.0,
              color: Colors.deepPurple,
            ),
            Container(
              width: 180.0,
              color: Colors.blue,
            ),
            Container(
              width: 180.0,
              color: Colors.yellowAccent,
            ),
          ],
        ));
  }
}
