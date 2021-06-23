import 'package:farm_ui/pages/device_screen.dart';
import 'package:farm_ui/pages/signin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

final List<String> drawerTexts = [
  'My Account',
  'Groups',
  'Devices',
  'Notifications',
  'FAQ',
  'About Us',
  'Logout',
];
final List<String> drawerIcons = [
  'MyAccount',
  'Groups',
  'Devices',
  'Notifications',
  'FAQ',
  'AboutUs',
  'Logout',
];

class HomeSidebar extends StatelessWidget {
  final String username;

  const HomeSidebar({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Function()> onTapList = [
      () {
        // Get.to(ClassScreen());
        Get.to(DeviceScreen());
      },
      () {
        // Get.to(ComingSoon(
        //   username: username,
        // ));
      },
      () {
        // Get.to(NotesPage(header_1: 'Notes', header_2: 'Modules'));
      },
      () {
        // Get.to(NotesPage(header_1: 'Notes', header_2: 'Modules'));
      },
      // Go to quiz
      () {
        // Get.to(QuizList());
      },
      //  Audio lectures.
      () {
        // Get.to(ComingSoon(
        //   username: username,
        // ));
      },
      () {
        Get.offAll(() => SignInPage());
      },
    ];
    var heightFactor = MediaQuery.of(context).size.height / 812;

    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 150,
            child: Container(
              color: Color(0xFFF1F2FF),
              child: Row(
                children: [
                  Expanded(
                    flex: 58,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 90,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 33,
                          child: Container(),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/user.png',
                              height: 132 * heightFactor,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 5),
                            Text(username),
                          ],
                        ),
                        Expanded(
                          flex: 26,
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 72,
                    child: Container(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 417,
            child: Container(
              color: Colors.green[400],
              child: DrawerTile(
                titles: drawerTexts,
                icons: drawerIcons,
                onTapList: onTapList,
                // onTapList: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NeumorphicLogo extends StatelessWidget {
  final Widget child;
  NeumorphicLogo({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFF0F0F3),
        // boxShadow: kNeumorphicShadows,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: child,
    );
  }
}

class DrawerTile extends StatelessWidget {
  final List<String> titles, icons;
  final int iconSize = 24;
  final Color color = Colors.white;
  final List<Function()> onTapList;

  /// A listview builder that accepts a list of strings of text and svg icon names from '/assets/icons/'
  DrawerTile({
    required this.titles,
    required this.icons,
    required this.onTapList,
  });

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(
    //   context,
    //   designSize: Size(414, 896),
    //   allowFontScaling: true,
    // );
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return false;
      },
      child: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: ListTile(
              onTap: onTapList[index],
              leading: Icon(Icons.ac_unit_sharp),
              // leading: CustomIcon(
              //   assetName: icons[index],
              //   size: 32.77,
              // ),
              title: Padding(
                padding: const EdgeInsets.only(left: 9.82),
                child: Text(
                  titles[index],
                  style: TextStyle(
                    color: color,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
