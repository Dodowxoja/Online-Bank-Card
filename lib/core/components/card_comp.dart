import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/core/constants/color_const.dart';
import 'package:home/core/constants/radius_const.dart';
import 'package:home/widgets/my_text_style.dart';

class CardComp {
  static Card cardCategory1(IconData icon, String svg) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: RadiusConst.bRadiusConst25),
      elevation: 0,
      color: ColorConst.kPCPicker2,
      child: ListTile(
        leading: CircleAvatar(
          radius: 26,
          backgroundColor: ColorConst.kPCRadius1,
          child: SvgPicture.asset(
            svg,
            colorBlendMode: BlendMode.srcOver,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'Name Card',
          style: MyTextStyle.textStyle(colors: ColorConst.kPCText3, size: 16),
        ),
        subtitle: Text(
          '**0000',
          style: MyTextStyle.textStyle(
              colors: ColorConst.kPCText3.withOpacity(0.6), size: 12),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$000',
              style:
                  MyTextStyle.textStyle(colors: ColorConst.kPCText3, size: 16),
            ),
            Text(
              '12/34',
              style: MyTextStyle.textStyle(
                  colors: ColorConst.kPCText3.withOpacity(0.6), size: 12),
            ),
          ],
        ),
      ),
    );
  }

  static Card cardCategory2(Color colorR, IconData icon, Color colorI) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: RadiusConst.bRadiusConst20),
      elevation: 0,
      color: ColorConst.kPCPicker2,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: colorR,
          radius: 26,
          child: Icon(icon, color: colorI),
        ),
        title: Text(
          'Name data',
          style: MyTextStyle.textStyle(colors: ColorConst.kPCText3, size: 16),
        ),
        trailing: Text(
          '-\$ price',
          style: MyTextStyle.textStyle(colors: ColorConst.kPCText3, size: 16),
        ),
      ),
    );
  }

  static Card cardCategory3(Color colorR, IconData icon, Color colorI) {
    return Card(
      elevation: 0,
      color: ColorConst.kPCPicker2,
      child: ListTile(
          leading: CircleAvatar(
            backgroundColor: colorR,
            radius: 26,
            child: Icon(icon, color: colorI),
          ),
          title: Text(
            'Name data',
            style: MyTextStyle.textStyle(colors: ColorConst.kPCText3, size: 16),
          ),
          trailing: const Icon(Icons.navigate_next)),
    );
  }
}
