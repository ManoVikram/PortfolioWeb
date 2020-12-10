import 'package:flutter/material.dart';

import './responsive.dart';

class ProfileInfo extends StatelessWidget {
  Widget _profileAvatar(contxt, size) => AnimatedContainer(
        duration: Duration(seconds: 2),
        height: Responsive.isSmallScreen(contxt)
            ? size.height * 0.25
            : size.width * 0.25,
        width: Responsive.isSmallScreen(contxt)
            ? size.height * 0.25
            : size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.indigo,
          shape: BoxShape.circle,
          image: DecorationImage(
            image:
                AssetImage("lib/assets/images/ManoVikram_BackgroundEdited.png"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final _profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hi! I'm ",
        textScaleFactor: 2,
        style: TextStyle(
          color: Colors.tealAccent,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Mano Vikram",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Programmer. Learner. Curious Fanatic.\n"
        "ABRACADABRA\n",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            shape: StadiumBorder(),
            color: Colors.cyan,
            padding: EdgeInsets.all(10),
            child: Text("Resume"),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Colors.cyan,
            ),
            shape: StadiumBorder(),
            color: Colors.cyan,
            child: Text("Sey Hello!"),
            onPressed: () {},
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _profileAvatar(context, size),
          _profileData,
        ],
      ),
      smallScreen: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _profileAvatar(context, size),
          SizedBox(
            height: size.height * 0.1,
          ),
          _profileData,
        ],
      ),
    );
  }
}
