import 'package:farm_ui/dummydata/data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text("Hi User"),
          bottom: TabBar(
            indicatorColor: Colors.white60,
            tabs: [
              Tab(
                  child: Text(
                "Farms",
                style: TextStyle(fontSize: 18),
              )),
              Tab(
                child: Text(
                  "Water Supply",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreenBody(
              data: farms,
              type: category.Farm,
            ),
            HomeScreenBody(
              data: waterSupply,
              type: category.WaterSupply,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  final data;
  final category type;

  const HomeScreenBody({Key? key, required this.data, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: data["count"],
                itemBuilder: (ctxt, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(data["data"][index]["name"]),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green[400],
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text("Add ${type == category.Farm ? "Farm" : "Water Supply"}"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
