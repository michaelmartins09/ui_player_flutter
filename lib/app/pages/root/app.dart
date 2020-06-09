import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_player_flutter/app/pages/home/home_page.dart';
import 'package:ui_player_flutter/app/shared/theme/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).scaffoldBackgroundColor
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: HomePage(),
    );
  }
}
