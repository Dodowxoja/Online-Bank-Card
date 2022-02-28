import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:home/core/constants/color_const.dart';
import 'package:home/core/constants/radius_const.dart';
import 'package:home/widgets/my_text_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: MyTextStyle.textStyle(
              colors:
                  _isDark ? ColorConst.kPCLightTheme : ColorConst.kPCDarkTheme,
              size: 24),
        ),
        actions: [
          Switch.adaptive(
            value: _isDark,
            onChanged: (status) {
              setState(
                () {
                  status
                      ? AdaptiveTheme.of(context).setDark()
                      : AdaptiveTheme.of(context).setLight();
                  _isDark = status;
                },
              );
            },
          ),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: RadiusConst.bRadiusConst25,
                  color: _isDark
                      ? ColorConst.kPCLightTheme
                      : ColorConst.kPCDarkTheme,
                ),
                alignment: Alignment.center,
                child: Text(
                  'EXIT',
                  style: MyTextStyle.textStyle(
                      colors: _isDark
                          ? ColorConst.kPCDarkTheme
                          : ColorConst.kPCLightTheme,
                      size: 24),
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
