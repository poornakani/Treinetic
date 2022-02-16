import 'package:flutter/material.dart';
import 'package:treinetic/Controllers/productDataFetch.dart';
import 'package:treinetic/mainItems/productRender.dart';
import 'package:treinetic/mainItems/productlist.dart';
import 'package:treinetic/widgets/pageviewButtons.dart';
import 'package:treinetic/models/productList.dart';

class MainItemPage extends StatefulWidget {
  const MainItemPage({Key key}) : super(key: key);

  @override
  _MainItemPageState createState() => _MainItemPageState();
}

class _MainItemPageState extends State<MainItemPage> {

  List<ProductModel> _productlist;
  bool _isloading = true;

  void initState() {
    super.initState();
    getproducts();
  }

  Future<void> getproducts() async {
    _productlist = await ProductAPI.getProduct();
    setState(() {
      _isloading = false;
    });
    print(_productlist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 45, bottom: 15, left: 8),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.format_list_bulleted,
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 240,
                    ),
                    Center(
                      child: Container(
                        width: 30,
                        height: 30,
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 40,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/image/bag.png"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.red),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // FoodPageBody(),
            // BigText(text: "Enjoy the world into virtual reality")
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text("Enjoy the world",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 5),
                  child: Text("into virtual reality",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                )),
            SizedBox(height: 30,),
            ProductRender(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  height: 40,
                  child: PageViewButtons()),
            ),
            SizedBox(height: 30,),
            _isloading ? Center(
              child: CircularProgressIndicator(),
            ) : SizedBox(
              height: 260,
              width: 400,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                itemCount: _productlist.length,
                itemBuilder: (context, index){
                  return
                    ProductList(title: _productlist[index].title, price: _productlist[index].price,
                          thumbnailUrl: _productlist[index].images);
              }),
            )
            // ProductList(title: "value",
            //     price: "125",
            //     thumbnailUrl: 'https://i.postimg.cc/L6rzhPQj/1-Varjo-VR-3.png'),
          ],
        ),
      ),
    );
  }
}
