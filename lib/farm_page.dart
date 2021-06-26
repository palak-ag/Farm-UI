import 'package:flutter/material.dart';
import './tabs/bottom/advisory.dart';
import './tabs/bottom/device.dart';
import 'dummydata/data.dart';

class FarmDevices extends StatefulWidget {
  final CATEGORY category;
  FarmDevices({Key? key, required this.title, required this.category})
      : super(key: key);

  final String title;

  @override
  _FarmDevicesState createState() => _FarmDevicesState();
}

class _FarmDevicesState extends State<FarmDevices> {
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
