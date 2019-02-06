import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {
  final _backgroundColor = Color(0xff020021);
  final _imageUrl =
      'https://pbs.twimg.com/profile_images/947228834121658368/z3AHPKHY_400x400.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: _backgroundColor,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: _backgroundColor,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              maxRadius: 50.0,
              backgroundImage: NetworkImage(_imageUrl),
            ),
            Text(
              'Eric Seidel',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            Text('ENGINEERING MANAGER', style: TextStyle(color: Colors.white)),
            Text('Co-founded the Flutter project',
                style: TextStyle(color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/linkedin.png',
                  width: 20.0,
                ),
                Image.asset(
                  'assets/skype.png',
                  width: 20.0,
                ),
                Image.asset(
                  'assets/twitter.png',
                  width: 20.0,
                )
              ],
            ),
            OutlineButton(
              onPressed: () {},
              child: Text(
                'GO TO WEBSITE',
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('HIRE ME'),
              color: Colors.blueAccent,
            ),
            Divider(),
            _getProjectsList()
          ],
        ),
      ),
    );
  }

  _getProjectsList() {
    var _cardListItem = Card(
              child: Column(
                children: <Widget>[
                  Text('Project Name'),
                  Text('Project description')
                ],
              ),
            );
    return Expanded(
      child: ListView(
          children: <Widget>[
            _cardListItem,
            _cardListItem,
            _cardListItem,
            _cardListItem,
            _cardListItem,
            _cardListItem,
          ],
      ),
    );
  }
}
