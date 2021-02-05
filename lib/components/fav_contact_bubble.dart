import 'package:flutter/material.dart';

class FavContactBubble extends StatelessWidget {
  final String imagePath;
  final String name;

  FavContactBubble({@required this.imagePath, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.blue.shade900,
          backgroundImage: AssetImage(this.imagePath),
          radius: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          this.name,
          style: TextStyle(fontSize: 19),
        )
      ],
    );
  }
}
