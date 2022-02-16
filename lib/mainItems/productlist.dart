import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  String title;
  String price;
  String thumbnailUrl;

  ProductList({
     this.title,
     this.price,
    @required this.thumbnailUrl = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        width: 150,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(
                      0.0,
                      10.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black12,
                    BlendMode.multiply,
                  ),
                  image: NetworkImage(thumbnailUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 19,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
            SizedBox(
              height: 05,
            ),
            Align(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
            //SizedBox(height: 10,),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.0),
                        topLeft: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(15.0)),
                  color: Colors.black,
                ),
                // child: Container(
                //   height: 15,
                //   width: 15,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage("assets/image/plus.png"),
                //       //fit: BoxFit.cover,
                //     ),
                //     color: Colors.white
                //   ),
                // ),
              ),
            ),
          ],
        )
        // child: Stack(
        //   children: [
        //     Align(
        //       child: Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 5.0),
        //         child: Text(
        //           title,
        //           style: TextStyle(
        //             fontSize: 19,
        //           ),
        //           overflow: TextOverflow.ellipsis,
        //           maxLines: 2,
        //           textAlign: TextAlign.center,
        //         ),
        //       ),
        //       alignment: Alignment.center,
        //     ),
        //     // Align(
        //     //   child: Row(
        //     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     //     children: [
        //     //       Container(
        //     //         padding: EdgeInsets.all(5),
        //     //         margin: EdgeInsets.all(10),
        //     //         decoration: BoxDecoration(
        //     //           color: Colors.black.withOpacity(0.4),
        //     //           borderRadius: BorderRadius.circular(15),
        //     //         ),
        //     //
        //     //       ),
        //     //       // Container(
        //     //       //   padding: EdgeInsets.all(5),
        //     //       //   margin: EdgeInsets.all(10),
        //     //       //   decoration: BoxDecoration(
        //     //       //     color: Colors.black,
        //     //       //     borderRadius: BorderRadius.circular(15),
        //     //       //   ),
        //     //       //   child: Row(
        //     //       //     children: [
        //     //       //       Icon(
        //     //       //         Icons.schedule,
        //     //       //         color: Colors.yellow,
        //     //       //         size: 18,
        //     //       //       ),
        //     //       //       SizedBox(width: 7),
        //     //       //       Text(price!),
        //     //       //     ],
        //     //       //   ),
        //     //       // )
        //     //     ],
        //     //   ),
        //     //   alignment: Alignment.bottomLeft,
        //     // ),
        //   ],
        // ),
        );
  }
}
