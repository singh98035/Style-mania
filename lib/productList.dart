import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Product.dart';

// ignore: must_be_immutable
class ProductListScreen extends StatefulWidget {

  var firebaseUser;
  ProductListScreen({this.firebaseUser});

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  int _selectedIndex = 0;
  PageController _pageController;

  List<String> genderTypes = ["Men", "Women"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: genderTypes.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width / genderTypes.length,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: index == _selectedIndex ?  Border(
                            bottom: BorderSide(width: 3, color: Colors.black)
                        ): Border()
                    ),
                    child: Text(
                      genderTypes[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                ProductViewBasedOnGender(products: products.where((element) => element.genderType == "Men").toList()),
                ProductViewBasedOnGender(products: products.where((element) => element.genderType == "Women").toList()),
              ],
              onPageChanged: (value) {
                _selectedIndex = value;
                setState(() { });
              },
            ),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ProductViewBasedOnGender({ List<Product> products }) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          childAspectRatio: 0.8
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        // print(">>>" + products[index].toString());
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductListDetailedScreen(productObj: products[index]),
                )
            );
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ), //BoxSha
                ]
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)
                  ),
                  child: Image.asset(
                    products[index].bannerImage,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18)
                      )
                  ),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          products[index].name,
                          textAlign: TextAlign.left,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            // fontSize: 16,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Text(
                        "\u{20B9} ${products[index].price}",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class ProductListDetailedScreen extends StatelessWidget {

  final Product productObj;
  List<String> sizes;
  ProductListDetailedScreen({ @required this.productObj});

  List<String> images = [];

  @override
  Widget build(BuildContext context) {
    images.add(productObj.bannerImage);
    productObj.images.forEach((element) { images.add(element); });
    sizes = productObj.size.split(",");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       title: Text(
          " Detail",
         style: TextStyle(
           color: Colors.black
         ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
          color: Colors.black,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart,
            color: Colors.black),
            onPressed: () { },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Container(
            height: 300,
            child: ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    images[index],
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 15,);
              },
            ),
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  productObj.name,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                "\u{20B9} ${productObj.price}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Text(
            productObj.description,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sizes:",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              Text(
                sizes.join("   "),
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text("Add To Cart")
                ),
              ),
              SizedBox(width: 8,),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: Text("Buy Now")
              ),
            ],
          )
        ],
      ),
    );
  }
}