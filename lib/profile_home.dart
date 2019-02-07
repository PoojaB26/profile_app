import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {
  final _backgroundColor = Color(0xff020021);

  final _imageUrl =
      'https://pbs.twimg.com/profile_images/947228834121658368/z3AHPKHY_400x400.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: _backgroundColor,
          actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
        )
      ]),
      body: Container(),
    );
  }
}
