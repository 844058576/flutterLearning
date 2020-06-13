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
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  Widget _getListData(context, index) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(listData[index]['imageUrl']),
            SizedBox(height: 12),
            Text(
              listData[index]['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
          color: Color.fromRGBO(233, 233, 233, 0.9),
          width: 1,
        )),
      );

  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // crossAxisSpacing: 10.0, //水平距离
        // mainAxisSpacing: 10.0, //垂直距离
        // padding: EdgeInsets.all(10),
        // crossAxisCount: 2,
        // children: this._getListData());
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.0, //水平距离
          mainAxisSpacing: 10.0, //垂直距离
          crossAxisCount: 2,
        ),
        itemCount: listData.length,
        itemBuilder: this._getListData,
    );
  }
}
