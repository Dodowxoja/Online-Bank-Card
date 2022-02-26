import 'package:flutter/material.dart';
import 'package:home/screens/myhome/my_home_page.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
    }
  }
}
