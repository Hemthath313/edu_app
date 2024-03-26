import 'package:flutter/material.dart';
import 'package:animated_icon/animated_icon.dart';

class HomeTabView extends StatefulWidget {
  const HomeTabView({super.key});

  @override
  State<HomeTabView> createState() => HomeTabViewState();
}

class HomeTabViewState extends State<HomeTabView> {
  @override
  Widget build(BuildContext context) {
    List<String> itemNames = [
      'Quiz',
      'Office',
      'Travelling',
      'Daily Routines',
      'Exercise',
      'Master Grammer',
      'Boost Your Vocabulary',
      'Practice with Experts'
    ];
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2.0, // Adjust the aspect ratio for width and height
          mainAxisSpacing:
              30.0, // Increase the spacing between the grid items vertically
          crossAxisSpacing:
              45.0, // Increase the spacing between the grid items horizontally
          children: List.generate(8, (index) {
            String itemName = itemNames[index];
            return Center(
              child: Container(
                width: 200.0, // Increase the width of each grid item
                height: 90.0, // Increase the height of each grid item
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // You can adjust the color here
                    width: 2.0, // You can adjust the width here
                  ),
                  borderRadius: BorderRadius.circular(
                      10.0), // You can adjust the radius here
                ),
                padding:
                    EdgeInsets.all(12.0), // You can adjust the padding here
                child: Text(itemName),
              ),
            );
          }),
        ),
      ),
    );
  }
}
