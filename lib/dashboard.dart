import 'package:flutter/material.dart';
import 'package:taskapp/loadmore.dart';
import 'package:taskapp/people.dart';
import 'package:taskapp/userdetails.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

List<String> images = [  
    'assets/1.jpg',  
    'assets/1.jpg',  
    'assets/1.jpg',  
    'assets/1.jpg',
    'assets/1.jpg',
    'assets/1.jpg',
    'assets/1.jpg'

  ];  

  List<String> names = [  
    'Sheti',
    'Sheti',
    'Sheti',
    'Sheti',
    'Sheti',
    'Sheti',
    'Sheti',


  ];  

  // product_list = [
  //   {
  //     "name": "All out",
  //     "picture": 'assets/1.jpg',
  //     "old_price": 120,
  //     "price": 85,
  //   },
  //   {
  //     "name": "Shampoo",
  //     "picture": "assets/1.jpg",
  //     "old_price": 220,
  //     "price": 185,
  //   },
  //   {
  //     "name": "All out",
  //     "picture": "assets/1.jpg",
  //     "old_price": 120,
  //     "price": 85,
  //   },
  //   {
  //     "name": "Shampoo",
  //     "picture": 'assets/1.jpg',
  //     "old_price": 220,
  //     "price": 185,
  //   },
  //   {
  //     "name": "All out",
  //     "picture": 'assets/1.jpg',
  //     "old_price": 120,
  //     "price": 85,
  //   },
  //   {
  //     "name": "Shampoo",
  //     "picture": 'assets/1.jpg',
  //     "old_price": 220,
  //     "price": 185,
  //   },
  // ];

class _DashboardState extends State<Dashboard> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(46,43,105,1),
        elevation: 0,
        // title: Text('Dashboard'),
        actions: [
          Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
            Icons.more_vert
        ),
      )
    ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(maxHeight:MediaQuery.of(context).size.height*2,
                minHeight: MediaQuery.of(context).size.height ),
              // height: MediaQuery.of(context).copyWith().size.height,
              
              // margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(color:Color.fromRGBO(46,43,105,1)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
              
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
              
                    children:[
                       Container(
                         margin: EdgeInsets.only(left: 20,top: 50),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Jey Seth",style: TextStyle(
                               color: Colors.white,
              
                              fontSize: 25,
                              fontWeight: FontWeight.bold
              
              
                             ),
                             textAlign: TextAlign.left,),
                             Text("reachjeysethi-@oksbi",style: TextStyle(
                               color: Color.fromRGBO(254, 254, 254, 0.5),
                               fontSize: 15,
              
              
                             ),
                             textAlign: TextAlign.left,)
                           ],
                         ),
                       ),
                      Container(
                        margin: EdgeInsets.only(right: 30,top: 30 ),
                      width:70,
                      height: 70,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/1.jpg'),
                          fit: BoxFit.fill)
              
              
                      ),
              
              
                      ),
              
                      ]
                      ),
                       Container(
                         margin: EdgeInsets.only(left: 20,top: 30),
                         child:
              
                             Text("FREQUENTLY CONTACTED",style: TextStyle(
                               color: Color.fromRGBO(254, 254, 254, 0.5),
                               fontSize: 15,
              
              
                             ),
                             textAlign: TextAlign.left,)
              
              
                       ),
                       LoadMore()
                      // GridView.count(
                      //                   crossAxisCount: 5,
                      //                   crossAxisSpacing: 10.0,
                      //                   mainAxisSpacing: 10.0,
                      //                   shrinkWrap: true,
              
                      //                   children: List.generate(images.length, (index) {
                      //                   return Padding(
                      //  padding: const EdgeInsets.all(10.0),
                      //  child: Container(
                      //    decoration: BoxDecoration(
                      //      image: DecorationImage(
                      //        image: AssetImage(images[index]),
                      //        fit: BoxFit.cover,
                      //      ),
                      //      borderRadius:
                      //      BorderRadius.all(Radius.circular(20.0),),
                      //    ),
                      //  ),
                      //                   );
                      //                 },),
                      //             ),
              
              
              
              
              
              
              
              
                      //  Products()
              
              
                ],
              ),
              
              
                    ),
              // Container(
              //   height: MediaQuery.of(context).size.height,
              //   width: MediaQuery.of(context).size.width,
              // )
            ],
          ),
        ),
      ),
    );
  }
}