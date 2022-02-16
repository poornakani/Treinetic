import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color color;
  final String text;
  double Size;
  double height;
  SmallText({Key key,
    this.text,
    this.Size=18,
    this.height=1.2,
    this.color=const Color(0xFF332d2b)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: Size,
        height: height,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
