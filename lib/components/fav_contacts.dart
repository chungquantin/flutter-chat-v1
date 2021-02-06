import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_chat_ui_starter/components/fav_contact_bubble.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class FavContacts extends StatelessWidget {
  final EdgeInsetsGeometry sectionPadding = EdgeInsets.fromLTRB(20, 10, 20, 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: this.sectionPadding,
              child: Text(
                "Favorite Contacts",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 17),
              ),
            ),
            Spacer(),
            Padding(
              padding: this.sectionPadding,
              child: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {}),
            )
          ],
        ),
        Container(
          height: 125,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: MockData().favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: FavContactBubble(
                      imagePath: MockData().favorites[index].imageUrl,
                      name: MockData().favorites[index].name));
            },
          ),
        ),
        
      ],
    );
  }
}

// Center(child: Text(MockData().favorites[index].name)))