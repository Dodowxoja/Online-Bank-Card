import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:home/core/components/theme_comp.dart';
import 'package:home/routes/my_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoutes _myRoutes = MyRoutes();
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeComp.lightTheme,
      dark: ThemeComp.darkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (lightTheme, darkThema) {
        return MaterialApp(
          title: 'Mobile Card',
          theme: lightTheme,
          darkTheme: darkThema,
          onGenerateRoute: _myRoutes.onGenerateRoute,
          initialRoute: '/',
        );
      },
    );
  }
}
