import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/components/message_item.dart';
import 'package:flutter_chat_ui_starter/constants/mock_data.dart';

class MessageSection extends StatelessWidget {
  const MessageSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return MessageItem(message: MockData().chats[index]);
    }, childCount: MockData().chats.length));
  }
}
