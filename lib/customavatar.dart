import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class CustomAvatars extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
List<String> images = ["https://randomuser.me/portraits/men/51.jpg", "https://randomuser.me/portraits/men/51.jpg", "https://randomuser.me/portraits/men/51.jpg"];
    
    return Container(
      margin: EdgeInsets.only(left: 80,top: 10),
      child: ImageStack(
              imageList: images,
              totalCount: images.length ,// If larger than images.length, will show extra empty circle
              imageRadius: 40, // Radius of each images
              imageCount: 4, // Maximum number of images to be shown in stack
              imageBorderWidth:4 , // Border width around the images
          ),
    );
  }
}