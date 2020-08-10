import 'package:flutter/material.dart';

Widget weaponBox(BuildContext context) {
  return Column(
    children: [
      basicInfo(context),
      detailBox(context),
    ],
  );
}

Widget basicInfo(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: Row(
      children: [
        weaponImageBox(context),
        descriptionBox(context),
      ],
    ),
  );
}

Widget weaponImageBox(BuildContext context) {
  return Container(
    width: 60,
    height: 60,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
  );
}

Widget descriptionBox(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 110,
    height: 60,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    child: Text(
      'Weapon Description',
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
      'Recommend Option / Reccomend Stones',
      style: TextStyle(fontSize: 14),
    ),
  );
}