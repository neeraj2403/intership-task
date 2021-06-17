import 'package:flutter/material.dart';

class FriendsCard extends StatelessWidget {
  const FriendsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      // scrollDirection: A,
      children: [
        InkWell(
          
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/portraits/men/51.jpg'),
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
                              'Stuart',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text('3,332',style: TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold 
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Last Interacted 7 day ago',style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500]
                          ),)),
                          Text('due', style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500]
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 20),
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
                              'Harry',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text('4,432',style: TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold 
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Last Interacted 7 day ago',style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500]
                          ),)),
                          Text('due', style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500]
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/portraits/men/49.jpg'),
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
                              'Miles',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text('100',style: TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold 
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Last Interacted 7 day ago',style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500]
                          ),)),
                          Text('due', style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500]
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
