import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
// import 'package:taskapp/customavatar.dart';
// import 'package:taskapp/friendscard.dart';
import 'package:taskapp/pie_chart_sections.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      height: 240,
      child: ContainedTabBarView(
        tabBarProperties: TabBarProperties(
          height: 30,
          width: 130,
          alignment: TabBarAlignment.start,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey[500],
        ),
        tabBarViewProperties: TabBarViewProperties(
          physics: AlwaysScrollableScrollPhysics(),
        ),
        tabs: [Text('return'), Text('receive')],
        views: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "RETURNED",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.left,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "38,139",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "of 42,456",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "UPCOMING",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.left,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "38,139",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "of 42,456",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                ],
              ),
    
              // type here
              Container(
                margin: EdgeInsets.only(bottom: 30, left: 20),
                width: 200,
                child: PieChart(PieChartData(
                  centerSpaceRadius: 60,
                  borderData: FlBorderData(show: false),
                  sections: getSections(),
                )),
              ),
            ],
          ),
    
          // Second Section
          Container(
            // height: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 15),
                          child: Text(
                            "RECIEVED",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left,
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "38,139",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "of 42,456",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 15),
                          child: Text(
                            "UPCOMING",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left,
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "38,139",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "of 42,456",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      ),
                   
                    ],
                  ),
                ),
    
                // type here
                Container(
                  margin: EdgeInsets.only(bottom: 30, left: 20),
                  width: 200,
                  child: PieChart(PieChartData(
                    centerSpaceRadius: 60,
                    borderData: FlBorderData(show: false),
                    sections: getSections(),
                  )),
                ),
              ],
            ),
          ),
        ],
        onChange: (index) => print(index),
      ),
    );
  }
}
