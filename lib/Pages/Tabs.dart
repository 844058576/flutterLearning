import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';
import 'tabs/Category.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

 int _currentIndex =0;

 List _pageList = [
   HomePage(),
   CategoryPage(),
   SettingPage(),
 ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('flutter demo'),
          ),
          body: this._pageList[this._currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._currentIndex,
            onTap: (int index) {
              setState(() {
                this._currentIndex = index;
              });
            },
            iconSize: 35.0,
            fixedColor: Colors.red, 
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), title: Text('分类')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text('设置')),
                   BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble), title: Text('设置')),
            ],
          ),
        ),
      ),
    );
  }
}
