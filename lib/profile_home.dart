import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Home'), actions: <Widget>[
        IconButton(
          onPressed: null,
          icon: Icon(Icons.favorite_border),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.more_vert),
        )
      ]),
    );
  }
}
