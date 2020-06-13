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
    return Container(
        height: 600,
        width: 400,
        color: Colors.pink,
        padding: EdgeInsets.all(10),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          // alignment: WrapAlignment.spaceBetween,
          // runAlignment: WrapAlignment.end,
          direction: Axis.horizontal,
          children: <Widget>[
            MyButton('第1季'),
            MyButton('第2季第2季'),
            MyButton('第3季'),
            MyButton('第4季'),
            MyButton('第5季'),
            MyButton('第6季'),
            MyButton('第7季第7季第7季'),
            MyButton('第8季'),
            MyButton('第9季'),
            MyButton('第0季'),
          ],
        ));
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(this.text),
        textColor: Theme.of(context).accentColor,
        onPressed: () {},
      ),
    );
  }
}
