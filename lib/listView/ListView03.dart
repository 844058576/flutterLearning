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
    return ListView(
      children: <Widget>[
        Image.network(
            "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1793226977,2625128741&fm=26&gp=0.jpg"),
        Container(
          child: Text('我是一个标题',
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 28,
           ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network(
            "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1793226977,2625128741&fm=26&gp=0.jpg"),
        Container(
          child: Text('我是一个标题',
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 28,
           ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network(
            "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1793226977,2625128741&fm=26&gp=0.jpg"),
        Container(
          child: Text('我是一个标题',
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 28,
           ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
      ],
    );
  }
}
