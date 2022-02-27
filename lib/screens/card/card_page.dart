import 'package:flutter/material.dart';
import 'package:home/core/components/card_comp.dart';
import 'package:home/core/components/divider_comp.dart';
import 'package:home/core/constants/color_const.dart';
import 'package:home/core/constants/edge_insets_const.dart';
import 'package:home/core/constants/radius_const.dart';
import 'package:home/widgets/my_text_style.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConst.kPCDarkTheme,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 31,
              child: Text('My Cards', style: MyTextStyle.textStyle(size: 24)),
            ),
            SizedBox(
              height: 182,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 149,
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      children: [cardInfo(), cardInfo(), cardInfo()],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cardNextRadius(ColorConst.kPCElipse1),
                      const SizedBox(width: 10),
                      cardNextRadius(ColorConst.kPCElipse2),
                      const SizedBox(width: 10),
                      cardNextRadius(ColorConst.kPCElipse2)
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 377,
              decoration: BoxDecoration(
                borderRadius: RadiusConst.bRadiusConst16,
                color: ColorConst.kPCPicker1,
              ),
              alignment: Alignment.center,
              child: ListTile(
                leading: Text(
                  'Make a Patment',
                  style: MyTextStyle.textStyle(size: 20),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$000', style: MyTextStyle.textStyle(size: 20)),
                    Text(
                      'Due: Jan 31,2021',
                      style: MyTextStyle.textStyle(
                        size: 12,
                        colors: ColorConst.kPCLightTheme.withOpacity(0.76),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: RadiusConst.bRadiusConst20,
                    color: ColorConst.kPCPicker1,
                  ),
                  alignment: Alignment.center,
                  child: Text('Settings', style: MyTextStyle.textStyle()),
                ),
                const SizedBox(width: 13),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: RadiusConst.bRadiusConst20,
                    color: ColorConst.kPCPicker1.withOpacity(0.5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Transactions',
                    style: MyTextStyle.textStyle(
                      colors: ColorConst.kPCLightTheme.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 274,
              width: 378,
              decoration: BoxDecoration(
                color: ColorConst.kPCPicker2,
                borderRadius: RadiusConst.bRadiusConst20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardComp.cardCategory3(
                    ColorConst.kPCElipseRaduis1,
                    Icons.text_snippet_outlined,
                    const Color(0xffDDDDDD),
                  ),
                  DividerComp.divider(),
                  CardComp.cardCategory3(
                    ColorConst.kPCElipseRaduis1,
                    Icons.text_snippet_outlined,
                    const Color(0xffDDDDDD),
                  ),
                  DividerComp.divider(),
                  CardComp.cardCategory3(
                    ColorConst.kPCElipseRaduis1,
                    Icons.text_snippet_outlined,
                    const Color(0xffDDDDDD),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  CircleAvatar cardNextRadius(Color color) {
    return CircleAvatar(
      radius: 7,
      backgroundColor: color,
    );
  }

  Container cardInfo() {
    return Container(
      height: 149,
      width: 377,
      margin: EInsetsConst.edgeInsetsH25,
      decoration: BoxDecoration(
        borderRadius: RadiusConst.bRadiusConst20,
        gradient: ColorConst.kPCLinearGradient1,
      ),
      padding: EInsetsConst.edgeInsetsH25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Card Name'),
            ],
          ),
          Row(
            children: [
              Text(
                '**** **** **** 1234',
                style: MyTextStyle.textStyle(
                    colors: ColorConst.kPCText5.withOpacity(0.86), size: 24),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Available Balance',
                style: MyTextStyle.textStyle(
                    colors: ColorConst.kPCLightTheme.withOpacity(0.8),
                    size: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$123,456',
                style: MyTextStyle.textStyle(
                  colors: ColorConst.kPCLightTheme,
                ),
              ),
              Text(
                '12/34',
                style: MyTextStyle.textStyle(
                    colors: ColorConst.kPCLightTheme, size: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
