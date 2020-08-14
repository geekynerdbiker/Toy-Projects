import 'package:cq/contents/character/characterDetailPage.dart';
import 'package:flutter/material.dart';

class CharacterListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        legendaryCharacters(context),
        elevationCharacters(context),
        contractCharacters(context),
        hiddenCharacters(context),
      ],
    );
  }

//  Widget legendaryCharacters(BuildContext context) {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: [
//        Container(
//          margin: EdgeInsets.all(10),
//          child: Text('[Legendary Character]'),
//        ),
//        characterCard(context)
//      ],
//    );
//  }

  Widget legendaryCharacters(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Legendary Character]'),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) {
              return characterCard(context);
            },
          ),
        ),
      ],
    );
  }

  Widget elevationCharacters(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Elevation Character]'),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) {
              return characterCard(context);
            },
          ),
        ),
      ],
    );
  }

  Widget contractCharacters(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Contract Character]'),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) {
              return characterCard(context);
            },
          ),
        ),
      ],
    );
  }

  Widget hiddenCharacters(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Hidden Character]'),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) {
              return characterCard(context);
            },
          ),
        ),
      ],
    );
  }

  Widget characterCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterDetailPage('characterName')));
      },
      child: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Row(
          children: [imageBox(context), summary(context)],
        ),
      ),
    );
  }

  Widget imageBox(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    );
  }

  Widget summary(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 132,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Character Name',
            style: TextStyle(fontSize: 14),
          ),
          Text(
            'Weapon Option / Stone Option',
            style: TextStyle(fontSize: 14),
          ),
          Text(
            'Special Skill / Recommend Combi',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
