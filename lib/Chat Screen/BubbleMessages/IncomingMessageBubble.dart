import 'package:flutter/material.dart';

class IncomingMessageBubble extends StatelessWidget{
  String text;
  String? image;
  IncomingMessageBubble({required this.text,this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16),topLeft: Radius.circular(0)),
            color: Color(0xFFF168C4B),
          ),
          child: Column(
            spacing: 10,
            children: [
              Text(
                this.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if(this.image != null)
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                  child: Image(
                    image: AssetImage(this.image!),
                    fit: BoxFit.contain,
                  ) ,
                )
            ],
          )
        ),
      ],
    );
  }
}