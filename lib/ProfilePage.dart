import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:taskapp/dashboard.dart';
import 'package:taskapp/header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromRGBO(46, 43, 105, 1),
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              // IconButton(icon: Icon(Icons.search), onPressed: () {},),
            ],
          ),
        ),
        backgroundColor: Color.fromRGBO(46, 43, 105, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(46, 43, 105, 1),
          leading: IconButton(
            onPressed: (){
                       Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom,child: Dashboard()));
              
            },
            icon:Icon(Icons.arrow_drop_down_outlined,
            size: 40,)
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Row(
                children: [
                  Container(
                    height: 1.0 * (MediaQuery.of(context).size.height / 20),
                    width: 4.25 * (MediaQuery.of(context).size.width / 10),
                    margin: EdgeInsets.only(
                        top: 25, bottom: 10, left: 20, right: 10),
                    child: RaisedButton(
                      elevation: 5.0,
                      color: Color.fromRGBO(26, 20, 67, 1),
                      onPressed: () async {},
                      child: Text(
                        'TRANSACTION',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 60,
                          // letterSpacing: 1.8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0 * (MediaQuery.of(context).size.height / 20),
                    width: 4.25 * (MediaQuery.of(context).size.width / 10),
                    margin: EdgeInsets.only(bottom: 10, top: 25),
                    child: RaisedButton(
                      elevation: 5.0,
                      color: Color.fromRGBO(26, 20, 67, 1),
                      onPressed: () async {},
                      child: Text(
                        'MESSAGE',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 60,
                          // letterSpacing: 1.8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                  color: Color.fromRGBO(243, 244, 248, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      fontSize: 20,
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
                                      fontSize: 20,
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
                                      fontSize: 20,
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
                        margin: EdgeInsets.only(left: 20, top: 30),
                        child: Text(
                          "UPCOMING",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.left,
                        )),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 20, right: 20, bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://randomuser.me/portraits/men/50.jpg'),
                              radius: 28.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'name',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text('name'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(child: Text('name')),
                                      Text('name'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
