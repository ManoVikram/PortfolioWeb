import 'package:flutter/material.dart';
import 'package:portfolio_web/widgets/navigationButton.dart';

import './responsive.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavigationButton(
                text: "GitHub",
                color: Colors.tealAccent,
                onPressed: () {},
              ),
              NavigationButton(
                text: "Twitter",
                color: Colors.tealAccent,
                onPressed: () {},
              ),
              NavigationButton(
                text: "Instagram",
                color: Colors.tealAccent,
                onPressed: () {},
              ),
            ],
          ),
          Text(
            "Mano Vikram © 2020",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NavigationButton(
            text: "GitHub",
            color: Colors.tealAccent,
            onPressed: () {},
          ),
          NavigationButton(
            text: "Twitter",
            color: Colors.tealAccent,
            onPressed: () {},
          ),
          NavigationButton(
            text: "Instagram",
            color: Colors.tealAccent,
            onPressed: () {},
          ),
          Text(
            "Mano Vikram © 2020",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
