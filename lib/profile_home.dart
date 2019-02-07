import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileHome extends StatefulWidget {
  @override
  ProfileHomeState createState() {
    return ProfileHomeState();
  }
}

class ProfileHomeState extends State<ProfileHome> {
  final _backgroundColor = Color(0xff020021);

  final _imageUrl =
      'https://pbs.twimg.com/profile_images/947228834121658368/z3AHPKHY_400x400.jpg';

  final TextStyle nameTagStyle = TextStyle(
      color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold);

  final TextStyle roleTagStyle = TextStyle(
      color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16.0);

  final TextStyle descriptionTagStyle =
  TextStyle(color: Colors.white, fontSize: 18.0);

  final projectNameStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );

  final projectDescriptionStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  bool isFavourite = false;

  void _toggleFavButton(){
    setState(() {
      isFavourite = !isFavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  title: Text('Profile'),
        backgroundColor: _backgroundColor,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              onPressed: _toggleFavButton,
              icon: isFavourite ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
          SizedBox(width: 20.0,),
          Icon(Icons.more_vert)
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: _backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: 'eric',
                  child: CircleAvatar(
                    maxRadius: 50.0,
                    backgroundImage: NetworkImage(_imageUrl),
                  ),
                ),
                Positioned(
                  bottom: 5.0,
                  right: 5.0,
                  child: Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
              'Eric Seidel',
              style: nameTagStyle,
            ),
            SizedBox(height: 10.0,),
            Text('ENGINEERING MANAGER', style: roleTagStyle),
            SizedBox(height: 5.0,),
            Text('Co-founded the Flutter project', style: descriptionTagStyle),
            SizedBox(height: 20.0,),
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
            SizedBox(height: 5.0,),
            _getProjectsList(),
            SizedBox(height: 5.0,),
            OutlineButton(
              onPressed: () => _launchURL(),
              child: Text(
                'GO TO WEBSITE',
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pushNamed('detail') ,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal : 20.0),
                child: Text('HIRE ME', style: TextStyle(color: Colors.white),),
              ),
              color: Colors.blueAccent,
            ),
            SizedBox(height: 20.0,)
          ],
        ),
      ),
    );
  }

  _getProjectsList() {
    return Container(
      height: 80.0,
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          getProjectTag('Dart'),
          getProjectTag('Flutter'),
          getProjectTag('Sass'),
          getProjectTag('Android'),
          getProjectTag('Angular'),
          getProjectTag('HTML'),
          getProjectTag('CSS'),
          getProjectTag('Material Design'),
        ],
      ),
    );
  }

  Widget getProjectTag(projectName) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Chip(
        backgroundColor: _backgroundColor.withOpacity(0.8),
        label: Text('#$projectName', style: TextStyle(color: Colors.white),),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
