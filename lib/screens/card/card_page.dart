import 'package:flutter/material.dart';
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
          children: [
            SizedBox(
              height: 31,
              child: Text(
                'My Cards',
                style: MyTextStyle.textStyle(size: 24),
              ),
            ),
            SizedBox(
              height: 182,
              child: Column(
                children: [
                  SizedBox(
                    height: 149,
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        cardInfo(),
                        cardInfo(),
                        cardInfo(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container cardInfo() {
    return Container(
      height: 149,
      width: 377,
      margin: EInsetsConst.edgeInsetsH25,
      decoration: BoxDecoration(
        borderRadius: RadiusConst.borderRadiusConst20,
        gradient: ColorConst.kPCLinearGradient1,
      ),
    );
  }
}
