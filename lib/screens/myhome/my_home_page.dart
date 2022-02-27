import 'package:flutter/material.dart';
import 'package:home/core/constants/color_const.dart';
import 'package:home/core/constants/icon_size_const.dart';
import 'package:home/core/constants/text_size_const.dart';
import 'package:home/screens/card/card_page.dart';
import 'package:home/screens/home/home_page.dart';
import 'package:home/screens/profile/profile_page.dart';
import 'package:home/screens/transaction/transaction_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<Widget>? _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomePage(),
      const CardPage(),
      const TransactionPage(),
      const ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_currentIndex],
      backgroundColor: ColorConst.kPCPicker1,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: IconSizeConst.kPBarIcon,
        selectedFontSize: TextSizeConst.kPBarText,
        backgroundColor: Colors.black,
        fixedColor: ColorConst.kPCButtonBar,
        unselectedItemColor: ColorConst.kPCBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet_outlined),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }
}
