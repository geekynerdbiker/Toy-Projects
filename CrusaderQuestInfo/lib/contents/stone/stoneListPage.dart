import 'package:cq/contents/character/characterDetailPage.dart';
import 'package:flutter/material.dart';

class StoneListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        setStones(context),
        uniqueStones(context),
        rareStones(context),
        uncommonStones(context),
        commonStones(context),
      ],
    );
  }

  Widget setStones(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Set Stone]'),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Wrap(
            children: [
              stoneImageBox(context),
              stoneImageBox(context),
              stoneImageBox(context),
              stoneImageBox(context),
              stoneImageBox(context)
            ],
          ),
        ),
      ],
    );
  }

  Widget uniqueStones(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Unique Stone]'),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Wrap(
            children: [stoneImageBox(context)],
          ),
        ),
      ],
    );
  }

  Widget rareStones(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Rare Stone]'),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Wrap(
            children: [stoneImageBox(context)],
          ),
        ),
      ],
    );
  }

  Widget uncommonStones(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Uncommon Stone]'),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Wrap(
            children: [stoneImageBox(context)],
          ),
        ),
      ],
    );
  }

  Widget commonStones(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('[Common Stone]'),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Wrap(
            children: [stoneImageBox(context)],
          ),
        ),
      ],
    );
  }

  Widget stoneImageBox(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      ),
    );
  }
}
