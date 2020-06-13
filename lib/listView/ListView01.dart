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
    return  ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings, size: 40,),
          title: Text('adoaqfjoqwf',
          style: TextStyle(
            fontSize: 24,
          ),
          ),
          subtitle: Text('xxxxxxxxx'),
        ),
         ListTile(
          leading: Icon(Icons.query_builder),
          title: Text('adoaqfjoqwf',
          style: TextStyle(
            fontSize: 24,
          ),
          ),
          subtitle: Text('xxxxxxxxx'),
          trailing: Icon(Icons.snooze),
        ),
         ListTile(
          leading: Icon(Icons.home),
          title: Text('adoaqfjoqwf',
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
