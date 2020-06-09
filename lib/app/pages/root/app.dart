import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_player_flutter/app/pages/library/library_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).scaffoldBackgroundColor
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.blueGrey[900]
          ),
          textTheme: TextTheme(
            headline1: TextStyle(
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.bold
            )
          )
        )
      ),
      home: LibraryPage(),
    );
  }
}
