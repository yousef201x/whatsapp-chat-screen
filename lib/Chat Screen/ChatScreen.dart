import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xFFF168C4B),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),

        titleSpacing: 0,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            CircleAvatar(
              radius: 18.5,
              backgroundImage: AssetImage("assets/images/profile_image.png"),
            ),
            
            Text(
              "John Safwat",
              style: TextStyle(
                fontFamily: "inter",
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),

            ),
          ],
        ),

        actionsPadding: EdgeInsets.only(right: 8),
        actions: [
          Row(
            spacing: 20,
            children: [
              Image(image: AssetImage("assets/images/Phone.png")),
              Image(image: AssetImage("assets/images/video.png")),
              Image(image: AssetImage("assets/images/More-vertical.png")),
            ],
          ),
        ],
      ),
    );
  }
}