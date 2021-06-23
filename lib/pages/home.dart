import 'package:farm_ui/dummydata/data.dart';
import 'package:farm_ui/farm_page.dart';
import 'package:farm_ui/pages/add_farm.dart';
import 'package:farm_ui/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_water.dart';

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
        drawer: HomeSidebar(username: "User"),
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
              type: CATEGORY.Farm,
            ),
            HomeScreenBody(
              data: waterSupply,
              type: CATEGORY.WaterSupply,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  final data;
  final CATEGORY type;

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
                          onTap: () => Get.to(
                            () => FarmDevices(
                              title:
                                  "${type == CATEGORY.Farm ? "Farm" : "Water Supply"} ${index + 1}",
                              category: type,
                            ),
                          ),
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
        onPressed: () {
          type == CATEGORY.Farm
              ? Get.to(() => AddFarm())
              : Get.to(() => AddWaterSupply());
        },
        icon: Icon(Icons.add),
        label: Text("Add ${type == CATEGORY.Farm ? "Farm" : "Water Supply"}"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
