import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color color;
  final String text;
  double Size;
  TextOverflow overflow;
   BigText({Key key,
   this.text,
    this.Size=20,
    this.color = const Color(0xFF332d2b),
    this.overflow= TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: Size,
      ),
    );
  }
}
