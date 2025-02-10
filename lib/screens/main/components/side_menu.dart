import 'package:admin/common/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:admin/common/theme/theme.dart' as adminTheme;

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);

  final RxBool isDarkMode = false.obs;

  changeTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(
        Get.isDarkMode ? adminTheme.lightTheme : adminTheme.darkTheme);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: ProfileCard(),
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
          ),
          DrawerListTile(
            title: "Dashboard".tr,
            icon: Icons.dashboard,
            press: () {},
            children: [
              DrawerListTile(
                title: "Storage".tr,
                icon: Icons.analytics,
                press: () {
                  Get.toNamed(Routes.STORAGEDASHBOARD);
                },
              ).marginOnly(left: 20),
              DrawerListTile(
                title: "Marketing".tr,
                icon: Icons.shopping_cart,
                press: () {
                  Get.toNamed(Routes.MARKETINGDASHBOARD);
                },
              ).marginOnly(left: 20),
              DrawerListTile(
                title: "Orders".tr,
                icon: Icons.shopping_bag,
                press: () {},
              ).marginOnly(left: 20),
              DrawerListTile(
                title: "Revenue".tr,
                icon: Icons.money,
                press: () {},
              ).marginOnly(left: 20),
            ],
          ),
          DrawerListTile(
            title: "Transaction".tr,
            icon: Icons.swap_horiz,
            press: () {},
            children: [],
          ),
          DrawerListTile(
            title: "Task".tr,
            icon: Icons.assignment,
            press: () {},
            children: [],
          ),
          DrawerListTile(
            title: "Documents".tr,
            icon: Icons.folder,
            press: () {},
            children: [],
          ),
          DrawerListTile(
            title: "Store".tr,
            icon: Icons.store,
            press: () {},
            children: [],
          ),
          DrawerListTile(
            title: "Notification".tr,
            icon: Icons.notifications,
            press: () {},
          ),
          DrawerListTile(
            title: "Profile".tr,
            icon: Icons.person,
            press: () {},
          ),
          DrawerListTile(
            title: "Settings".tr,
            icon: Icons.settings,
            press: () {},
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  changeTheme();
                },
                icon: Obx(
                  () => isDarkMode.value
                      ? Icon(Icons.light_mode_sharp)
                      : Icon(Icons.dark_mode_sharp),
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      color: Get.theme.cardColor,
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.language),
                            title: Text('English'),
                            onTap: () {
                              Get.updateLocale(Locale('en', 'US'));
                              Get.back();
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.language),
                            title: Text('中文'),
                            onTap: () {
                              Get.updateLocale(Locale('zh', 'CN'));
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.sign_language_sharp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Get.theme.cardColor,
            border: Border.all(
              color: Get.theme.cardColor,
              width: 5,
            ),
          ),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Get.theme.cardColor,
            backgroundImage: AssetImage("assets/images/profile_pic.png"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Angelina Jolie"),
            ),
            Icon(Icons.more_vert),
          ],
        )
      ],
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    this.press,
    this.children,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback? press;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    if (children != null && children!.isNotEmpty) {
      for (var child in children!) {
        if (child is DrawerListTile) {
          child.marginOnly(left: 30);
        }
      }
    }
    return children != null && children!.isNotEmpty
        ? ExpansionTile(
            title: ListTile(
              horizontalTitleGap: 0.0,
              leading: Icon(
                icon,
                size: 20,
              ).marginOnly(right: 10),
              title: Text(
                title,
              ),
            ),
            initiallyExpanded: false,
            children: children!,
            backgroundColor: Get.theme.canvasColor,
            tilePadding: EdgeInsets.only(right: 10),
          )
        : ListTile(
            onTap: press,
            horizontalTitleGap: 0.0,
            leading: Icon(
              icon,
              size: 20,
            ).marginOnly(right: 10),
            title: Text(
              title,
            ),
          );
  }
}
