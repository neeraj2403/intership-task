import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jey Seth",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "reachjeysethi-@oksbi",
                  style: TextStyle(
                    color: Color.fromRGBO(254, 254, 254, 0.5),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30, top: 30),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/1.jpg'), fit: BoxFit.fill)),
          ),
        ]);
  }
}
