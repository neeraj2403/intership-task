// import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taskapp/new_details.dart';
import 'package:taskapp/user_model.dart';
import 'package:taskapp/userdetails.dart';
// import 'package:google_pay_ui/model/userModel.dart';

class LoadMore extends StatefulWidget {
  // final PanelController panelController;
  final panelController;

  const LoadMore({Key? key, required this.panelController}) : super(key: key);

  @override
  _LoadMoreState createState() => _LoadMoreState();
}

class _LoadMoreState extends State<LoadMore> {
  // final panelController = PanelController();

  bool _isVisible = true;

  get panelController => null;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Freqecontacted(context),
      replacement: Visibility(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserDetails(),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "RECENTS",
                        style: TextStyle(
                          color: Color.fromRGBO(254, 254, 254, 0.5),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.left,
                      )),
                  IconButton(
                      onPressed: () {
                        showToast();
                        
                      },
                      icon: Icon(
                        Icons.arrow_upward_sharp,
                        color: Colors.white,
                      ))
                ],
              ),
              NewDetails(),
            ],
          ),
        ),
        replacement: Freqecontacted(context),
      ),
    );
  }



  Container Freqecontacted(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                dummyData[index].imgUrl,
                              ),
                              radius: 25,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            dummyData[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    showToast();
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 25,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.grey[300],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Show More",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
