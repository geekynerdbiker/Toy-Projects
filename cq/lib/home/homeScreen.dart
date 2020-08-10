import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          classCardList(context),
        ],
      ),
    );
  }

  Widget classCardList(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        padding: EdgeInsets.all(10),
        crossAxisCount: 3,
        children: [
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
