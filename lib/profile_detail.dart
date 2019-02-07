import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {

  final _imageUrl =
      'https://pbs.twimg.com/profile_images/947228834121658368/z3AHPKHY_400x400.jpg';


  final _hiredTextStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hired'),
      ),
      body: Container(
        margin: EdgeInsets.all(50.0),
       // color: Colors.yellowAccent,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'eric',
              child: CircleAvatar(
                maxRadius: 100.0,
                backgroundImage: NetworkImage(_imageUrl),
              ),
            ),
            Text('Candidate is Hired', style: _hiredTextStyle,)
          ],
        ),
      ),
    );
  }
}
