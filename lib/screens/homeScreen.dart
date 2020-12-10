import 'package:flutter/material.dart';

import '../widgets/responsive.dart';
import '../widgets/navigationHeader.dart';
import '../widgets/profileInfo.dart';
import '../widgets/social.dart';
import '../widgets/navigationButton.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
      largeScreen: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          elevation: 0.0,
        ),
        drawer: Responsive.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.all(20.0),
                  children: [
                    NavigationButton(
                      text: "About",
                      onPressed: () {},
                    ),
                    NavigationButton(
                      text: "Work",
                      onPressed: () {},
                    ),
                    NavigationButton(
                      text: "Contact",
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(size.height * 0.1),
            child: Responsive(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavigationHeader(),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: size.height * 0.2,
                  ),
                  Social(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
