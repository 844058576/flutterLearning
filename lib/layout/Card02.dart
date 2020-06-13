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
    return ListView(children: <Widget>[
      Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 20 / 9,
              child: Image.network(
                  'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1134612021,3761314729&fm=26&gp=0.jpg',
                  fit: BoxFit.cover),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.network(
                  'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2786422413,1024520103&fm=26&gp=0.jpg',
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
              title: Text('xxx'),
              subtitle: Text('xxxx'),
            )
          ],
        )
      ),
       Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 20 / 9,
              child: Image.network(
                  'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1134612021,3761314729&fm=26&gp=0.jpg',
                  fit: BoxFit.cover),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=214674719,5965860&fm=26&gp=0.jpg'),
              ),
              title: Text('xxx'),
              subtitle: Text('xxxx'),
            )
          ],
        ),
      )
    ]);
  }
}
