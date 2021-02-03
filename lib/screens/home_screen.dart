import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/components/category_selector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(child: Column(
        children: [
          CategorySelector()
        ],
      )),
    );
  }
}
