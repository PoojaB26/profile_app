import 'package:flutter/material.dart';
import 'package:profile_app/profile_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(

        ),
        primarySwatch: Colors.blue,
      ),
      home: ProfileHome(),
    );
  }
}
