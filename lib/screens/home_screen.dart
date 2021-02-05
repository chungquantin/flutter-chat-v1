import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/components/category_selector.dart';
import 'package:flutter_chat_ui_starter/components/fav_contact_bubble.dart';
import 'package:flutter_chat_ui_starter/components/fav_contacts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              child: FavContacts()
            ),
          )
        ],
      )),
    );
  }
}
