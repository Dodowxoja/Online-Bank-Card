import 'package:flutter/material.dart';
import 'package:home/core/components/card_comp.dart';
import 'package:home/core/components/divider_comp.dart';
import 'package:home/core/constants/color_const.dart';
import 'package:home/core/constants/edge_insets_const.dart';
import 'package:home/core/constants/radius_const.dart';
import 'package:home/widgets/my_text_style.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConst.kPCDarkTheme,
      height: double.infinity,
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EInsetsConst.edgeInsetsH25,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: MyTextStyle.textStyle(size: 24),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent',
                        style: MyTextStyle.textStyle(
                          colors: ColorConst.kPCText3.withOpacity(0.8),
                          size: 20,
                        ),
                      ),
                      Text(
                        'Select Time Range',
                        style: MyTextStyle.textStyle(
                          colors: ColorConst.kPCText3.withOpacity(0.8),
                          textD: TextDecoration.underline,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
              width: 354,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 72,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: RadiusConst.bRadiusConst20,
                      color: ColorConst.kPCPicker1,
                    ),
                    alignment: Alignment.center,
                    child: Text('All', style: MyTextStyle.textStyle(size: 16)),
                  ),
                  transFilter(
                    129,
                    const Color(0xff439E41).withOpacity(0.8),
                    'Income',
                  ),
                  transFilter(
                    131,
                    const Color(0xFFC5626E).withOpacity(0.75),
                    'Expense',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 224,
              width: 378,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Today',
                        style: MyTextStyle.textStyle(
                          size: 20,
                          colors: ColorConst.kPCText3.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: RadiusConst.bRadiusConst25,
                      color: ColorConst.kPCPicker2,
                    ),
                    height: 175,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CardComp.cardCategory2(
                          ColorConst.kPCRadius3,
                          Icons.shop,
                          ColorConst.kPCIcon2,
                        ),
                        DividerComp.divider(),
                        CardComp.cardCategory2(
                          ColorConst.kPCRadius4,
                          Icons.description_outlined,
                          ColorConst.kPCIcon3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 367,
              width: 378,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Yesterday',
                        style: MyTextStyle.textStyle(
                          size: 20,
                          colors: ColorConst.kPCText3.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: RadiusConst.bRadiusConst25,
                      color: ColorConst.kPCPicker2,
                    ),
                    height: 321,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CardComp.cardCategory2(
                          ColorConst.kPCRadius5,
                          Icons.swap_horiz_outlined,
                          ColorConst.kPCIcon4,
                        ),
                        DividerComp.divider(),
                        CardComp.cardCategory2(
                          const Color(0xffECECEC),
                          Icons.description_outlined,
                          const Color(0xff5F5F5F),
                        ),
                        DividerComp.divider(),
                        CardComp.cardCategory2(
                          ColorConst.kPCRadius6,
                          Icons.attach_money,
                          ColorConst.kPCIcon5,
                        ),
                        DividerComp.divider(),
                        CardComp.cardCategory2(
                          ColorConst.kPCRadius7,
                          Icons.credit_card_rounded,
                          ColorConst.kPCIcon6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// ! FUNCTION
  Container transFilter(double wSize, Color iColor, String type) {
    return Container(
      width: wSize,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: RadiusConst.bRadiusConst20,
        color: ColorConst.kPCPicker1.withOpacity(0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_circle_down,
            size: 16,
            color: iColor,
          ),
          const SizedBox(width: 2),
          Text(
            type,
            style: MyTextStyle.textStyle(
              size: 16,
              colors: ColorConst.kPCLightTheme.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
