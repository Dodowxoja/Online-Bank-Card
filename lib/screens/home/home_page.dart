import 'package:flutter/material.dart';
import 'package:home/core/components/categoria_comp.dart';
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
                                colors: ColorConst.kPCText1,
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
                color: ColorConst.kPCDarkTheme,
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
                        CategoriaComp.categoriya('Transfer',
                            Icons.swap_horiz_outlined, '/transfer', context),
                        CategoriaComp.categoriya('Bills',
                            Icons.description_outlined, '/bills', context),
                        CategoriaComp.categoriya('Recharge', Icons.phone_iphone,
                            '/recharge', context),
                        CategoriaComp.categoriya(
                            'More', Icons.more_horiz, '/more', context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 226,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Cards',
                              style: MyTextStyle.textStyle(
                                size: 20,
                                colors: ColorConst.kPCText3.withOpacity(
                                  0.8,
                                ),
                              ),
                            ),
                            TextButton(
                              child: Text(
                                'View All',
                                style: MyTextStyle.textStyle(
                                  colors: ColorConst.kPCBar,
                                  textD: TextDecoration.underline,
                                ),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: RadiusConst.borderRadiusConst25,
                            color: ColorConst.kPCPicker2,
                          ),
                          height: 178,
                        )
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
}
