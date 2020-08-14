import 'package:flutter/material.dart';

Widget borderLine(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: MediaQuery.of(context).size.width,
    height: 2,
    color: Colors.grey,
  );
}