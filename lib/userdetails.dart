import 'package:flutter/material.dart';
import 'package:taskapp/user_model.dart';
// import 'package:google_pay_ui/model/userModel.dart';

class UserDetails extends StatelessWidget {
  // final ScrollController controller;

  const UserDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 15),
        height: 190,
        width: double.infinity,
        child: GridView.builder(
          physics: ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
          ),
          itemCount: dummyData.length,
          // controller: controller,
          itemBuilder: (context, i) {
            return GridTile(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(dummyData[i].imgUrl),
                    radius: 25,
                  ),
                  SizedBox(height: 2),
                  Text(
                    dummyData[i].name,
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
    );
  }
}
