import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;

  NavigationButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.color = const Color(0xFFFA1616),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      highlightedBorderColor: color,
      onPressed: onPressed,
    );
  }
}
