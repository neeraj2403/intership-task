import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:taskapp/customavatar.dart';
import 'package:taskapp/pie_chart_sections.dart';

Map<String, double> dataMap = {
  "Flutter": 5,
  "React": 3,
  "Xamarin": 2,
  "Ionic": 2,
};

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // padding: EdgeInsets.zero,
        // controller: controller,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "YOUR ACCOUNT",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
                textAlign: TextAlign.left,
              )),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1.2L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Total Exchanges",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1.2L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Total Exchanges",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1.2L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Total Exchanges",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              ]),

          Container(
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
                Container(
                  child: Row(
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
                ),
                Container(color: Colors.green)
              ],
              onChange: (index) => print(index),
            ),
          ),
          CustomAvatars()

          //
        ],
      ),
    );
  }
}
