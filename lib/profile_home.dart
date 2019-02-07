import 'package:flutter/material.dart';

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

  get _devName => Text(
    'Eric Seidel',
    style: TextStyle(
        color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
  );

  get _profileImage => Stack(
    children: <Widget>[
      CircleAvatar(
        maxRadius: 50.0,
        backgroundImage: NetworkImage(_imageUrl),
      ),
      Positioned(
        bottom: 0.0,
        right: 0.0,
        child: Container(
          height: 30.0,
          width: 30.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.0),
            color: Colors.blue,
          ),
          child: Icon(Icons.check, color: Colors.white, size: 18.0,),
        ),
      )
    ],
  );

  get _devRole => Text(
    'ENGINEERING MANAGER',
    style: TextStyle(
        color: Colors.grey[400],
        fontSize: 16.0,
        fontWeight: FontWeight.w500),
  );

  get _devDescription => Text(
    'Co-founded the Flutter Project',
    style: TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500),
  );

  get _socialLinks => Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Image.asset(
        'assets/linkedin.png',
        height: 20.0,
      ),
      Image.asset(
        'assets/twitter.png',
        height: 20.0,
      ),
      Image.asset(
        'assets/skype.png',
        height: 20.0,
      )
    ],
  );

  get _launchWebsiteButton => OutlineButton(
    onPressed: () {},
    child: Text(
      'LAUNCH WEBSITE',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
      ),
    ),
  );

  get _hireMeButton => FlatButton(
    onPressed: () {
      Navigator.of(context).pushNamed('/details');
    },
    padding: EdgeInsets.symmetric(horizontal: 35.0),
    color: Colors.blue,
    child: Text(
      'HIRE ME',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
  );

  get _devTags => Container(
    height: 50.0,
    //color: Colors.white,
    child: ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        getTag('Flutter'),
        getTag('Dart'),
        getTag('Android'),
        getTag('iOS'),
        getTag('React Native'),
        getTag('Material Design'),
      ],
    ),
  );

  Padding getTag(tagName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chip(
        backgroundColor: _backgroundColor.withOpacity(0.8),
        label: Text(
          '#$tagName',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }


  bool isFavourite = false;

  _toggleFavButton(){
    setState(() {
      isFavourite = !isFavourite;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: _backgroundColor,
          actions: <Widget>[
            IconButton(
              onPressed: _toggleFavButton,
              icon: isFavourite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ]),
      body: Container(
        //color: Colors.red,
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _profileImage,
            SizedBox(
              height: 10.0,
            ),
            _devName,
            SizedBox(
              height: 10.0,
            ),
            _devRole,
            _devDescription,
            SizedBox(
              height: 20.0,
            ),
            _socialLinks,
            SizedBox(
              height: 20.0,
            ),
            _devTags,
            SizedBox(
              height: 20.0,
            ),
            _launchWebsiteButton,
            _hireMeButton
          ],
        ),
      ),
    );
  }
}
