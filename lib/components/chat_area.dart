import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/components/chat_item.dart';
import 'package:flutter_chat_ui_starter/constants/mock_data.dart';

class ChatArea extends StatefulWidget {
  @override
  _ChatAreaState createState() => _ChatAreaState();
}

class _ChatAreaState extends State<ChatArea> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:  Padding(
        padding: EdgeInsets.only(bottom: 90),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero,
          ),
          child: ListView.builder(
              itemCount: MockData().messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ChatItem(message: MockData().messages[index]);
              }),
        ),
      ),
    );
  }
}
