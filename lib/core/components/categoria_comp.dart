import 'package:flutter/material.dart';
import 'package:home/core/constants/color_const.dart';
import 'package:home/widgets/my_text_style.dart';

class CategoriaComp {
  static InkWell categoriya(
    String text,
    IconData icon,
    String routeName,
    BuildContext context,
  ) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 38,
            backgroundColor: ColorConst.kPCRadius1,
            child: Icon(
              icon,
              size: 39,
              color: ColorConst.kPCIcon1,
            ),
          ),
          Text(
            text,
            style: MyTextStyle.textStyle(size: 16),
          ),
        ],
      ),
      onTap: () {
        Navigator.pushNamed(context, routeName.toString());
      },
    );
  }
}
