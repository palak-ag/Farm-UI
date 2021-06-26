import 'package:farm_ui/pages/device_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../adddevice.dart';

class Device extends StatelessWidget {
  const Device({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Device ${index + 1}"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () => Get.to(
                            () => DeviceScreen(
                              deviceName: "Device ${index + 1}",
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        )
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
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddDevice()),
          );
        },
        icon: Icon(Icons.add),
        label: Text("Add Device"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
