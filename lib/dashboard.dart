import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taskapp/header.dart';
import 'package:taskapp/loadmore.dart';
import 'package:taskapp/panel_widget.dart';

class Dashboard extends StatefulWidget {
  // final PanelController panelController;

  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    final panelHeightclosed = MediaQuery.of(context).size.height * 0.1;
    final panelHeightopen = MediaQuery.of(context).size.height * 0.55;

    return Scaffold(
      backgroundColor: Color.fromRGBO(46, 43, 105, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(46, 43, 105, 1),
        elevation: 0,
        // title: Text('Dashboard'),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      body: SlidingUpPanel(
        controller: panelController,
        maxHeight: panelHeightopen,
        minHeight: panelHeightclosed,
        borderRadius: BorderRadius.only(topRight: Radius.circular(18)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // constraints: BoxConstraints(
                //     maxHeight: MediaQuery.of(context).size.height * 2,
                //     minHeight: MediaQuery.of(context).size.height),
                // height: MediaQuery.of(context).copyWith().size.height,

                // margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Header(),
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 30),
                        child: Text(
                          "FREQUENTLY CONTACTED",
                          style: TextStyle(
                            color: Color.fromRGBO(254, 254, 254, 0.5),
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        )),
                    LoadMore(panelController: panelController),
                  ],
                ),
              ),
            ],
          ),
        ),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
          panelController: panelController,
        ),
      ),
    );
  }
}
