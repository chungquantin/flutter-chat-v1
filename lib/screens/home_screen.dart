import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/components/category_selector.dart';
import 'package:flutter_chat_ui_starter/components/fav_contacts.dart';
import 'package:flutter_chat_ui_starter/components/message_item.dart';
import 'package:flutter_chat_ui_starter/components/message_section.dart';
import 'package:flutter_chat_ui_starter/constants/mock_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: unused_element
  _buildBody() {
    return Column(
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
              child: Column(
                children: [FavContacts(), MessageSection()],
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {})
            ],
            centerTitle: true,
            title: Text("Chats"),
            elevation: 0.0,
            backgroundColor: Theme.of(context).primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: SafeArea(
                child: Container(
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
                              child: Column(
                                children: [FavContacts()],
                              )),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(top: 50)),
              ),
            ),
            pinned: true,
            floating: true,
            expandedHeight: 330,
          ),
          MessageSection()
        ],
      ),
    );
  }
}
