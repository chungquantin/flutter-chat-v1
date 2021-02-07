import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/core/middleware/isAuth.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class ChatItem extends StatefulWidget {
  final Message message;

  ChatItem({@required this.message});

  @override
  _ChatItemState createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    bool isCurrent = isCurrentUser(widget.message.sender);
    List<Widget> inner = [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: 320,
        margin: !isCurrent
            ? EdgeInsets.only(top: 10, bottom: 5, right: 20)
            : EdgeInsets.only(top: 10, bottom: 5, left: 20),
        decoration: BoxDecoration(
            color: !isCurrent
                ? Color.fromRGBO(91, 192, 239, 0.1)
                : Theme.of(context).accentColor,
            borderRadius: !isCurrent
                ? BorderRadius.horizontal(right: Radius.circular(20))
                : BorderRadius.horizontal(left: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.message.time),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.message.text,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey[600]),
            )
          ],
        ),
      ),
    ];

    if (!isCurrent) {
      inner.add(IconButton(
          icon: !widget.message.isLiked ? Icon(
            Icons.favorite_outline,
            color: Colors.grey[500],
          ) : Icon(
            Icons.favorite,
            color: Colors.pink[600],
          ),
          iconSize: 26,
          onPressed: () {
            setState(() {
              widget.message.isLiked = !widget.message.isLiked;
            });
          }));
    }
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: isCurrent ? WrapAlignment.end : WrapAlignment.start,
      children: inner,
    );
  }
}
