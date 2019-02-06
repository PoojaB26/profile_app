import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {

  final _imageUrl =
      'https://pbs.twimg.com/profile_images/947228834121658368/z3AHPKHY_400x400.jpg';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'eric',
          child: CircleAvatar(
            maxRadius: 100.0,
            backgroundImage: NetworkImage(_imageUrl),
          ),
        ),
      ),
    );
  }
}
