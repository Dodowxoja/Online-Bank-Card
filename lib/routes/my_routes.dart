import 'package:flutter/material.dart';
import 'package:home/screens/myhome/my_home_page.dart';
import 'package:home/screens/pages/bills_page.dart';
import 'package:home/screens/pages/more_page.dart';
import 'package:home/screens/pages/recharge_page.dart';
import 'package:home/screens/pages/transfer_page.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case '/transfer':
        return MaterialPageRoute(builder: (_) => const TransferPage());
      case '/bills':
        return MaterialPageRoute(builder: (_) => const BillsPage());
      case '/recharge':
        return MaterialPageRoute(builder: (_) => const RechargePage());
      case '/more':
        return MaterialPageRoute(builder: (_) => const MorePage());
    }
  }
}
