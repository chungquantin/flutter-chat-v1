import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/core/middleware/isAuth.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/utils/string.dart';

class MessageItem extends StatelessWidget {
  final Message message;
  String formattedMessage;

  MessageItem({@required this.message}) {
    formattedMessage = formatExtendedString(message.text, 20);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: message.unread ? BoxDecoration(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
          color: Color.fromRGBO(255, 61, 61, 0.1)) : null,
      margin: EdgeInsets.only(top: 10, right: 10, bottom: 5),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(message.sender.imageUrl),
            radius: 32,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message.sender.name,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.blueGrey[600]),
              ),
              SizedBox(height: 8),
              Text(
                isCurrentUser(message.sender)
                    ? "You: ${this.formattedMessage}"
                    : "${message.sender.name}: ${this.formattedMessage}",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(message.time),
              message.unread
                  ? (Container(
                      margin: EdgeInsets.only(top: 6),
                      child: Text(
                        "New",
                        style: TextStyle(color: Colors.white),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.circular(40)),
                    ))
                  : (Text(""))
            ],
          )
        ],
      ),
    );
  }
}
