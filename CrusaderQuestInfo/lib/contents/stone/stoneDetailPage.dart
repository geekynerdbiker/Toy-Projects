import 'package:cq/contents/stone/stoneListPage.dart';
import 'package:flutter/material.dart';

class StoneDetailPage extends StatefulWidget {
  _StoneDetailPage createState() => _StoneDetailPage();
}

class _StoneDetailPage extends State<StoneDetailPage>
    with TickerProviderStateMixin {
  TabController _controller;

  List<Tab> _tabs = [
    Tab(
      child: Row(
        children: [
          Text('1 '),
          Icon(Icons.star),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Text('2 '),
          Icon(Icons.star),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Text('3 '),
          Icon(Icons.star),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Text('4 '),
          Icon(Icons.star),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Stone',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.5,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Column(
          children: [
            TabBar(
              controller: _controller,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: _tabs,
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  StoneListPage(),
                  StoneListPage(),
                  StoneListPage(),
                  StoneListPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
