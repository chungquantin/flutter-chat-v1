import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/components/message_item.dart';
import 'package:flutter_chat_ui_starter/constants/mock_data.dart';

class MessageSection extends StatelessWidget {
  const MessageSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
      ),
      child: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: MockData().messages.length,
              itemBuilder: (BuildContext context, int index) {
                return MessageItem(message: MockData().chats[index]);
              })),
    ));
  }
}
