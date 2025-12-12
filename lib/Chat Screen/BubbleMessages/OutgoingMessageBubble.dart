import 'package:flutter/material.dart';

class OutgoingMessageBubble extends StatelessWidget{
  String text;

  OutgoingMessageBubble({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(0),bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16),topLeft: Radius.circular(16)),
            color: Color(0xFFF232D36),
          ),
          child: Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}