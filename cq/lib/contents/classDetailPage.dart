import 'package:cq/contents/character/characterListPage.dart';
import 'package:flutter/material.dart';

class ClassDetailPage extends StatefulWidget {
  int initialPage;
  ClassDetailPage(this.initialPage);

  _ClassDetailPage createState() => _ClassDetailPage();
}

class _ClassDetailPage extends State<ClassDetailPage>
    with TickerProviderStateMixin {
  TabController _controller;

  List<Tab> _tabs = [
    Tab(
      child: Text('Warrior'),
    ),
    Tab(
      child: Text('Paladin'),
    ),
    Tab(
      child: Text('Archer'),
    ),
    Tab(
      child: Text('Hunter'),
    ),
    Tab(
      child: Text('Wizard'),
    ),
    Tab(
      child: Text('Priest'),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 6, initialIndex: widget.initialPage);
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
          'Class',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.5,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
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
                  CharacterListPage(),
                  CharacterListPage(),
                  CharacterListPage(),
                  CharacterListPage(),
                  CharacterListPage(),
                  CharacterListPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
