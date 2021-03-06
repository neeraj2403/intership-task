import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:taskapp/dashboard.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            child: new Text("Dashboard",style: TextStyle(
              color: Colors.white
            ),),
            color: Colors.black,
            
            
            

            
            onPressed: () {
               Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: Dashboard()));
            },
          ),
          Container(height: 20.0), //SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
