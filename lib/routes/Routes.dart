// import 'dart:js';

import 'package:flutter/material.dart';

import '../Pages/Tabs.dart';
import '../Pages/FormPage.dart';
import '../Pages/Search.dart';
import '../Pages/Product.dart';
import '../Pages/ProductInfo.dart';
import '../Pages/user/Login.dart';
import '../Pages/user/RegisterFirst.dart';
import '../Pages/user/RegisterSecond.dart';
import '../Pages/user/RegisterThird.dart';
//配置路由
final routes={
      '/':(context)=>Tabs(),
      '/form':(context)=>FormPage(),
      '/product':(context)=>ProductPage(),
      '/productinfo':(context,{arguments})=>ProductInfoPage(arguments:arguments),
      '/search':(context,{arguments})=>SearchPage(arguments:arguments),
      'login':(context) => LoginPage(),
       '/login':(context)=>LoginPage(),
      '/registerFirst':(context)=>RegisterFirstPage(),
      '/registerSecond':(context)=>RegisterSecondPage(),
      '/registerThird':(context)=>RegisterThirdPage(),
};

//固定写法
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};