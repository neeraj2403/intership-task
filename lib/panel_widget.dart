import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:taskapp/customavatar.dart';
import 'package:taskapp/friendscard.dart';
import 'package:taskapp/pie_chart_sections.dart';
import 'package:taskapp/tabbar.dart';



class PanelWidget extends StatefulWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  _PanelWidgetState createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  bool _isVisible = true;

  get panelController => null;

  void showToast1() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

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
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "YOUR ACCOUNT",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
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
                            fontSize: 18,
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
                        "129",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
                        "4632",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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

          Tabbar(),

          Visibility(
              visible: _isVisible,
              child: custom(),
              replacement: Visibility(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              "FRIENDS",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.left,
                            )),
                        IconButton(
                            onPressed: () {
                              showToast1();
                            },
                            icon: Icon(
                              Icons.arrow_drop_up,
                              color: Colors.black,
                            )),
                      ],
                    ),
                    FriendsCard(),
                  ],
                ),
                replacement: custom(),
              ))

          //
        ],
      ),
    );
  }

  Column custom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(
              left: 20, 
            ),
            child: Text(
              "FRIENDS",
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
            CustomAvatars(),
            IconButton(
                onPressed: () {
                  showToast1();
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
          ],
        ),
      ],
    );
  }
}
