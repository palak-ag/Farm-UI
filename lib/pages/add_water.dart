import '../widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddWaterSupply extends StatelessWidget {
  const AddWaterSupply({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightFactor = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Farm"),
        backgroundColor: Colors.green[400],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      """
Enter the details of the new \nWater Supply""",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                        height: 630 * heightFactor,
                        child: AddWaterSupplyForm()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddWaterSupplyForm extends StatelessWidget {
  const AddWaterSupplyForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name : ",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Spacer(),
          TextFormField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                gapPadding: 2.0,
              ),
            ),
          ),
          Spacer(flex: 2),
          Text(
            "Location : ",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Spacer(),
          TextFormField(
            maxLines: 4,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                gapPadding: 2.0,
              ),
            ),
          ),
          Spacer(flex: 2),
          Text(
            "Type : ",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Spacer(),
          TextFormField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                gapPadding: 2.0,
              ),
            ),
          ),
          Spacer(flex: 4),
          Center(
            child: CustomButton(
              title: "Next",
              onTap: () {},
            ),
          ),
          Spacer(flex: 6),
        ],
      ),
    );
  }
}
