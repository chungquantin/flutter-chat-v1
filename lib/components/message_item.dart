import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class MessageItem extends StatelessWidget {
  final Message message;

  MessageItem({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(message.text),
    );
  }
}