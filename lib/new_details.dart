import 'package:flutter/material.dart';
import 'package:taskapp/user_model.dart';
// import 'package:google_pay_ui/model/userModel.dart';

class NewDetails extends StatelessWidget {
  // final ScrollController controller;

  const NewDetails({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height:MediaQuery.of(context).size.height,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemCount: newData.length,
        // controller: controller,
        itemBuilder: (context, i) {
          return GridTile(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(newData[i].imgUrl),
                  radius: 25,
                ),
                SizedBox(height: 2),
                Text(
                  newData[i].name,
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
    );
  }
}