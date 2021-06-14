import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  var product_list = [
    {
      "name": "All out",
      "picture": 'assets/1.jpg',
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Shampoo",
      "picture": "assets/1.jpg",
      "old_price": 220,
      "price": 185,
    },
    {
      "name": "All out",
      "picture": "assets/1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Shampoo",
      "picture": 'assets/1.jpg',
      "old_price": 220,
      "price": 185,
    },
    {
      "name": "All out",
      "picture": 'assets/1.jpg',
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Shampoo",
      "picture": 'assets/1.jpg',
      "old_price": 220,
      "price": 185,
    },
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pictures: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pictures;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pictures,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
    child: GridTile(
      footer: Container(
          // color: Colors.white70,
          child: new Text(
            prod_name,
            style: TextStyle(
                 fontSize: 10.0),
          )),
      child: InkWell(
        child: Container(
                  // margin: EdgeInsets.only(right: 30,top: 30 ),
                width:50,
                height: 50,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(prod_pictures),
                    
                    fit: BoxFit.fill),
                  
                  
                  
                ),
                
                
                ),
                onTap: (){},
      ),
    ),
    );
  }
}