import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {

  final _backgroundColor = Color(0xff020021);

  final _imageUrl = 'https://pbs.twimg.com/profile_images/947228834121658368/z3AHPKHY_400x400.jpg';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        title: Text('Profile Details'),
      ),
      body: Container(
        //color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Hero(
                tag: 'eric',
                child: CircleAvatar(
                  maxRadius: 80.0,
                  backgroundImage: NetworkImage(_imageUrl),
                ),
              ),
              Text('Hired!', style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
