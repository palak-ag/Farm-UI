import 'package:flutter/material.dart';

class DeviceScreen extends StatefulWidget {
  final String deviceName;
  const DeviceScreen({Key? key, this.deviceName = "Device 1"})
      : super(key: key);

  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // drawer: HomeSidebar(username: "User"),
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(widget.deviceName),
          bottom: TabBar(
            indicatorColor: Colors.white60,
            tabs: [
              Tab(
                  child: Text(
                "Properties",
                style: TextStyle(fontSize: 18),
              )),
              Tab(
                child: Text(
                  "Logs",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DeviceProperties(),
            
            Logs(),
          ],
        ),
      ),
    );
  }
}

class DeviceProperties extends StatelessWidget {
  const DeviceProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: (ExpansionTile(
              title: Text("Property ${index + 1}"),
              children: [
                Container(
                  height: 200,
                  child: Center(
                    child: Row(
                      children: [
                        Spacer(),
                        Expanded(
                          flex: 6,
                          child: Text("Space for graph"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text("Value 1"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
          );
        });
  }
}

class Logs extends StatelessWidget {
  const Logs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now() ;
    return Scaffold(
      body: new Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                '  Login Date : ${now.year} - ${now.month} - ${now.day}\nLogin Time : ${now.hour} : ${now.minute} : ${now.second} Message : ',
                style: TextStyle(fontSize: 26, height: 3),
                textAlign: TextAlign.center,
              ),

            ),
            Container(
              child: SizedBox(
                width: 200.0,
                height: 100.0,  
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Message xyz",
                        style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    
      
      
    
    
  }
}

