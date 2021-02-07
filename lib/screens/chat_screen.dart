import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/components/chat_area.dart';
import 'package:flutter_chat_ui_starter/constants/mock_data.dart';
import 'package:flutter_chat_ui_starter/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({@required this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final double leadingButtonSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          leading:GestureDetector(
            onTap: ()=> Navigator.popUntil(context, ModalRoute.withName('/'))
             ,child: Center(
              child: Container(
            width: this.leadingButtonSize,
            height: this.leadingButtonSize,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Text(
              MockData().chats.where((chat) => chat.unread == true).length.toString(),
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ))),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0.0,
          title: Text(
            widget.user.name,
            style: TextStyle(fontSize: 22),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
          ],
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ChatArea()
                    ],
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
