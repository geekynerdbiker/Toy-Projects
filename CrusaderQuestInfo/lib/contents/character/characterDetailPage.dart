import 'package:cq/contents/character/characterWidgets.dart';
import 'package:cq/contents/weapon/weaponWidgets.dart';
import 'package:cq/models/designSystem.dart';
import 'package:flutter/material.dart';

class CharacterDetailPage extends StatelessWidget {
  String characterName;
  CharacterDetailPage(this.characterName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          characterName,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.5,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          characterBox(context),
          borderLine(context),
          weaponBox(context),
        ],
      ),
    );
  }
}
