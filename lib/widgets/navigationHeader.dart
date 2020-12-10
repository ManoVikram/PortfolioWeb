import 'package:flutter/material.dart';

import './responsive.dart';
import './manoVIkram.dart';
import './navigationButton.dart';

class NavigationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      largeScreen: Row(
        mainAxisAlignment: Responsive.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ManoVikram(),
          if (!Responsive.isSmallScreen(context))
            Row(
              children: [
                NavigationButton(
                  text: "About",
                  color: Colors.cyanAccent,
                  onPressed: () {},
                ),
                NavigationButton(
                  text: "Work",
                  color: Colors.cyanAccent,
                  onPressed: () {},
                ),
                NavigationButton(
                  text: "Contact",
                  color: Colors.cyanAccent,
                  onPressed: () {},
                ),
              ],
            ),
        ],
      ),
    );
  }
}
