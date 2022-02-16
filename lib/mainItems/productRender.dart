import 'package:flutter/material.dart';
import 'package:treinetic/widgets/whiteButton.dart';

class ProductRender extends StatefulWidget {
  String imagrpath;
   ProductRender({Key key,
   this.imagrpath
   }) : super(key: key);

  @override
  _ProductRenderState createState() => _ProductRenderState();
}

class _ProductRenderState extends State<ProductRender> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: Colors.white,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return _buildPageItems(index);
          }),
    );
  }

  Widget _buildPageItems(int index) {
    return Stack(
      children: [
        Container(
          height: 200,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue,
            // image: DecorationImage(
            //   image: AssetImage(
            //       "assets/image/vr.png"
            //   ),
            // )
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15),
                    child: Text(
                      "Improved Controller \nDesign With \n\Virtual Reality",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: whiteButton(
                  //     text: "Buy Now!",
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 200,
                width: 130,
                child: Image.network("https://i.postimg.cc/L6rzhPQj/1-Varjo-VR-3.png"),
              )
            ],
          ),
        ),
    Padding(
      padding: const EdgeInsets.only(top: 130,left: 20,bottom: 20),
      child: whiteButton(
          text: "Buy Now!",
        ),
    ),
      ],
    );
  }
}
