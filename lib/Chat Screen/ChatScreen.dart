import 'package:assignment_1/Chat%20Screen/BubbleMessages/IncomingMessageBubble.dart';
import 'package:assignment_1/Chat%20Screen/BubbleMessages/OutgoingMessageBubble.dart';
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

        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(
            color: Color(0xFFF181818),
            image: DecorationImage(
              image: AssetImage("assets/images/background_pattern.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            spacing: 15,
            children: [
              IncomingMessageBubble(text: "Hello !"),
              OutgoingMessageBubble(text: "Hello !"),
              IncomingMessageBubble(text: "Hey! How are u doing ? ",),
              IncomingMessageBubble(
                text: "what a Great Content Tp learn Flutter",
                image: "assets/images/chat_img.jpg",
              ),
              OutgoingMessageBubble(text: "what! a Great Content To learn Flutter"),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Image(
                            image: AssetImage("assets/images/Camera.png"),
                            width: 24,
                            height: 24,
                          ),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: "Type a Message ...",
                        hintStyle: TextStyle(color: Colors.white),

                        suffixIcon: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                          child: Image(
                            image: AssetImage("assets/images/Send.png"),
                            width: 24,
                            height: 24,
                          ),
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xFFF168C4B)),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xFFF168C4B)),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xFFF168C4B)),
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ],
          ),
        )

    );
  }
}