import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  Responsive({
    Key key,
    @required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isLargeScreen(BuildContext contxt) {
    return MediaQuery.of(contxt).size.width > 800;
  }

  static bool isMediumScreen(BuildContext contxt) {
    return MediaQuery.of(contxt).size.width > 800 &&
        MediaQuery.of(contxt).size.width < 1200;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (contxt, constraints) {
        if (constraints.maxWidth > 800) {
          return largeScreen;
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return mediumScreen ?? smallScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
