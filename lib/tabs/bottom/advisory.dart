import 'package:flutter/material.dart';

class Advisory extends StatelessWidget {
  const Advisory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            new ListTile(
              leading: new MyBullet(),
              title: new Text('First advice'),
            ),
            new ListTile(
              leading: new MyBullet(),
              title: new Text('Second advice'),
            ),
            new ListTile(
              leading: new MyBullet(),
              title: new Text('Third advice'),
            ),
            new ListTile(
              leading: new MyBullet(),
              title: new Text('Fourth advice'),
            )
          ],
        ),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 20.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
