import 'package:flutter/material.dart';
import './tabs/bottom/advisory.dart';
import './tabs/bottom/device.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Advisory'),
              Tab(text: 'Device'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Advisory(),
            Device(),
          ],
        ),
      ),
    );
  }
}
