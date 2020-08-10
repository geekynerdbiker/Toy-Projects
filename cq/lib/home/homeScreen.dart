import 'package:cq/contents/classDetailPage.dart';
import 'package:cq/contents/stone/stoneDetailPage.dart';
import 'package:cq/database/classes.dart';
import 'package:cq/database/contents.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Hasla Dictionary',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.5,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              classCardList(context),
              contentCardList(context),
            ],
          ),
          copyright(context),
        ],
      ),
    );
  }

  Widget classCardList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.7,
      child: GridView.builder(
        padding: EdgeInsets.all(15),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 6,
        itemBuilder: (context, index) {
          return classCard(context, classItems[index], index);
        },
      ),
    );
  }

  Widget classCard(BuildContext context, ClassItem classItem, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ClassDetailPage(index)));
      },
      child: Container(
        margin: EdgeInsets.all(5),
        color: Colors.grey,
        child: Text(classItem.title),
      ),
    );
  }

  Widget contentCardList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.5,
      child: GridView.builder(
        padding: EdgeInsets.all(15),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2.5),
        itemCount: 4,
        itemBuilder: (context, index) {
          return contentCard(context, contentItems[index]);
        },
      ),
    );
  }

  Widget contentCard(BuildContext context, ContentItem contentItem) {
    return InkWell(
      onTap: () {
        if(contentItem.title == 'Stones')
          Navigator.push(context, MaterialPageRoute(builder: (context) => StoneDetailPage()));
      },
        child: Container(
      margin: EdgeInsets.all(5),
      color: Colors.grey,
      child: Text(contentItem.title),
        ),
    );
  }

  Widget copyright(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'DEVELOPER: lightyear.thespaceranger@gmail.com',
          style: TextStyle(fontSize: 12, color: Colors.grey[400]),
        ),
      ),
    );
  }
}
