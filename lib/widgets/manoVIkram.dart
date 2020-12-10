import 'package:flutter/material.dart';

class ManoVikram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "MV",
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          margin: EdgeInsets.only(
            left: 5,
            top: 12,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF39FF14),
          ),
        ),
      ],
    );
  }
}
