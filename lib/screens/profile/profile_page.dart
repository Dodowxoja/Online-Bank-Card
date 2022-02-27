import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

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
        actions: [
          Switch.adaptive(
            value: _isDark,
            onChanged: (status) {
              setState(
                () {
                  if (status) {
                    AdaptiveTheme.of(context).setDark();
                  } else {
                    AdaptiveTheme.of(context).setLight();
                  }
                  _isDark = status;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
