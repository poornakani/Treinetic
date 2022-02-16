import 'package:flutter/material.dart';

class PageViewButtons extends StatefulWidget {
  PageViewButtons({
    Key key,
  }) : super(key: key);

  @override
  State<PageViewButtons> createState() => _PageViewButtonsState();
}


class _PageViewButtonsState extends State<PageViewButtons> {
  bool isButtonPressedAll = false;
  bool isButtonPressedPopular = false;
  bool isButtonPressedRecent = false;
  bool isButtonPressedView = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15)
          ),
          child: RaisedButton(
            color: isButtonPressedAll ? Colors.black12 : Colors.blue,
            onPressed: () {
              setState(() {
                isButtonPressedAll = !isButtonPressedAll;

              });
            },
            child: Text(
              "All Product",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
          ),
          child: RaisedButton(
            color: isButtonPressedPopular ? Colors.black12 : Colors.blue,
            onPressed: () {
              setState(() {
                isButtonPressedPopular = !isButtonPressedPopular;
              });
            },
            child: Text(
              "Popular",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
          ),
          child: RaisedButton(
            color: isButtonPressedRecent ? Colors.black12 : Colors.blue,
            onPressed: () {
              setState(() {
                isButtonPressedRecent = !isButtonPressedRecent;
              });
            },
            child: Text(
              "Recent",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
          ),
          child: RaisedButton(
            color: isButtonPressedView ? Colors.black12 : Colors.blue,
            onPressed: () {
              setState(() {
                isButtonPressedView = !isButtonPressedView;
              });
            },
            child: Text(
              "Recent View",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }


}
