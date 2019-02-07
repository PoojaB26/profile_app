import 'package:flutter/material.dart';
import 'package:profile_app/profile_home.dart';
import 'package:profile_app/profile_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileHome(),
      routes: {
        '/details' : (context) => ProfileDetail()
      },
    );
  }
}
