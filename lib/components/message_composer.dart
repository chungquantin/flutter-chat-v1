import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/constants/mock_data.dart';

// ignore: must_be_immutable
class MessageComposer extends StatefulWidget {
  String messageInput = "";
  MessageComposer({Key key}) : super(key: key);
  

  @override
  _MessageComposerState createState() => _MessageComposerState();
}

class _MessageComposerState extends State<MessageComposer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              ),
              onPressed: () {},
              iconSize: 25,
            ),
            Expanded(
                child: TextField(
                    onChanged: (String value) {
                      print(value);
                      setState(() {
                        widget.messageInput = value;
                      });
                    },
                    decoration: InputDecoration.collapsed(
                        hintText: "Send a message..."))),
            IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.grey,
              ),
              onPressed: () {
                MockData().sendMessage(widget.messageInput);
              },
              iconSize: 25,
            ),
          ],
        ),
      )),
    );
  }
}
