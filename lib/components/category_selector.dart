import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  CategorySelector({Key key}) : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ["Message", "Online", "Groups", "Requests"];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Padding(
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      letterSpacing: 1.2),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              ),
              onTap: () {
                print(index);
                setState(() {
                  selectedIndex = index;
                });
                print(selectedIndex);
              },
            );
          },
          itemCount: categories.length,
        ));
  }
}
