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
        ListTile(
          leading: Image.network(
              "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1997431450,943063458&fm=26&gp=0.jpg"),
          title: Text(
            'adoaqfjoqwf',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          subtitle: Text('xxxxxxxxx'),
        ),
        ListTile(
          leading: Image.network(
              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2211356384,417340668&fm=26&gp=0.jpg"),
          title: Text(
            'adoaqfjoqwf',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          subtitle: Text('xxxxxxxxx'),
          trailing: Icon(Icons.snooze),
        ),
        ListTile(
          leading: Image.network(
            "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1856257744,310285552&fm=26&gp=0.jpg",
            width: 70,
          ),
          title: Text(
            'adoaqfjoqwf',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          subtitle: Text('xxxxxxxxx'),
        ),
      ],
    );
  }
}
