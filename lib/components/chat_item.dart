import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/core/middleware/isAuth.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class ChatItem extends StatelessWidget {
  final Message message;

  ChatItem({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: isCurrentUser(message.sender)
          ? EdgeInsets.only(top: 10, bottom: 5, right: 70)
          : EdgeInsets.only(top: 10, bottom: 5, left: 70),
      decoration: BoxDecoration(
          color: isCurrentUser(message.sender) ? Color.fromRGBO(91, 192, 239, 0.1) : Theme.of(context).accentColor,
          borderRadius: isCurrentUser(message.sender)
              ? BorderRadius.horizontal(right: Radius.circular(20))
              : BorderRadius.horizontal(left: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time),
          SizedBox(height: 10,),
          Text(message.text, style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.blueGrey[600]
          ),)
        ],
      ),
    );
  }
}
