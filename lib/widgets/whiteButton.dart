import 'package:flutter/material.dart';

class whiteButton extends StatelessWidget {
  String text;
  double Size;

 whiteButton({Key key,
  this.text,
   //this.color = const Color(0xFFf7f6f4),
   this.Size=20,
 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: Size,
              color: Colors.blue
            ),
          ),
        ),
      ),
    );
  }
}
