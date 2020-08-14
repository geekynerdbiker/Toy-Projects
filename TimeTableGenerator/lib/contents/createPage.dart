import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePage createState() => _CreatePage();
}

class _CreatePage extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Schedule List',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, index) {
            return scheduleItemBuilder(context);
          },
        ),
      ),
    );
  }

  Widget scheduleItemBuilder(BuildContext context) {
    return InkWell(
      onTap: () {
        print('item selected');
      },
      child: Container(
        height: 50,
        color: Colors.black,
      ),
    );
  }
}
