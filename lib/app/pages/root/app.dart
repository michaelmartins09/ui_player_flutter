import 'package:flutter/material.dart';

import '../home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            title: TextStyle(
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.bold
            )
          )
        )
      ),
      home: HomePage(),
    );
  }
}
