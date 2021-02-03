import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List<String> categories = ["Message", "Online", "Groups", "Requests"];
    return Container(
        height: 90,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              child: Text(
                categories[index],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 1.5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            );
          },
          itemCount: categories.length,
        ));
  }
}
