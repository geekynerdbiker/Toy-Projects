import 'package:flutter/material.dart';

Widget characterBox(BuildContext context) {
  return Column(
    children: [
      basicInfo(context),
      storyBox(context),
      detailBox(context),
    ],
  );
}

Widget basicInfo(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: Row(
      children: [
        characterImageBox(context),
        skill(context),
      ],
    ),
  );
}

Widget characterImageBox(BuildContext context) {
  return Container(
    width: 90,
    height: 90,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
  );
}

Widget skill(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 140,
    height: 90,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        skillImageBox(context),
        skillDescriptionBox(context)
      ],
    ),
  );
}

Widget skillImageBox(BuildContext context) {
  return Container(
    width: 40,
    height: 40,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
  );
}

Widget skillDescriptionBox(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5),
    child: Text(
      'Skill Description',
      style: TextStyle(fontSize: 14),
    ),
  );
}

Widget storyBox(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    child: Text(
      'character story',
      style: TextStyle(fontSize: 14),
    ),
  );
}

Widget detailBox(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    child: Text(
      'Position / Rank for Each Contents\nWeapon Option\nRecommend Stones\nSpecial Skill\nRecommend Combination',
      style: TextStyle(fontSize: 14),
    ),
  );
}