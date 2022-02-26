import 'package:flutter/material.dart';
import 'package:home/core/constants/color_const.dart';
import 'package:home/core/constants/edge_insets_const.dart';
import 'package:home/core/constants/radius_const.dart';
import 'package:home/widgets/my_text_style.dart';

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
                        padding: EdgeInsetsConst.edgeInsetsLeft25,
                        height: 62,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Good Morning',
                              style: MyTextStyle.textStyle(
                                colors: ColorConst.kPColorText1,
                              ),
                            ),
                            Text(
                              'Name Firstname',
                              style: MyTextStyle.textStyle(size: 22),
                            ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '\$ Price 0,000.00',
                        style: MyTextStyle.textStyle(size: 26),
                      ),
                      Text('Available Balance', style: MyTextStyle.textStyle()),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              padding: EdgeInsetsConst.edgeInsetsAll25,
              decoration: BoxDecoration(
                color: ColorConst.kPColorDarkTheme,
                borderRadius: BorderRadius.only(
                  topLeft: RadiusConst.radiusConst50,
                  topRight: RadiusConst.radiusConst50,
                ),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        categoriya('Transfer', Icons.swap_horiz_outlined),
                        categoriya('Bills', Icons.description_outlined),
                        categoriya('Recharge', Icons.phone_iphone),
                        categoriya('More', Icons.more_horiz),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell categoriya(String text, IconData icon) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 38,
            child: Icon(icon, size: 39),
          ),
          Text(
            text,
            style: MyTextStyle.textStyle(size: 16),
          ),
        ],
      ),
    );
  }
}
