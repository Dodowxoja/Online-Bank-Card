import 'package:flutter/material.dart';
import 'package:home/core/constants/color_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 62,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 25),
                        height: 62,
                        width: 163,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Good Morning'),
                            Text('Name Firstname'),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Column(
                    children: const [
                      Text('\$ Price'),
                      Text('Available Balance'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: ColorConst.kPColorDarkTheme,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
