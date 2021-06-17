import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:taskapp/ProfilePage.dart';
import 'package:taskapp/user_model.dart';
// import 'package:google_pay_ui/model/userModel.dart';

class NewDetails extends StatelessWidget {
  // final ScrollController controller;

  const NewDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: GridView.builder(
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemCount: newData.length,
        // controller: controller,
        itemBuilder: (context, i) {
          return GridTile(
            child: Column(
              children: [
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(newData[i].imgUrl),
                    radius: 23,
                  ),
                  onTap: (){
                     Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.bottomToTop,
                                child: ProfilePage()));
                  },
                ),
                SizedBox(height: 2),
                Text(
                  newData[i].name,
                  style: TextStyle(
                    color: Color.fromRGBO(254, 254, 254, 0.5),

                    // fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
