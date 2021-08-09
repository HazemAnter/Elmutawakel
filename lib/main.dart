import 'package:elmutawakel/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          cardColor: Colors.white.withOpacity(.3),
          scaffoldBackgroundColor: Colors.black.withOpacity(.8),
          primarySwatch: Colors.blue,
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.white.withOpacity(.2))),
      home: HomeScreen(),
    );
  }
}
