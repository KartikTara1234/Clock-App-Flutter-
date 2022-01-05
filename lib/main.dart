// @dart=2.9
import 'package:clock_app/models/my_theme_provider.dart';
import 'package:clock_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, Theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Analog Clock',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: Theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
