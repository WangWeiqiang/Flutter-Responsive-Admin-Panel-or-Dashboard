import 'package:admin/models/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:admin/common/theme/theme.dart' as adminTheme;

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);

  late RxBool isDarkMode = false.obs;

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
          ),
          DrawerListTile(
            title: "Transaction".tr,
            icon: Icons.swap_horiz,
            press: () {},
          ),
          DrawerListTile(
            title: "Task".tr,
            icon: Icons.assignment,
            press: () {},
          ),
          DrawerListTile(
            title: "Documents".tr,
            icon: Icons.folder,
            press: () {},
          ),
          DrawerListTile(
            title: "Store".tr,
            icon: Icons.store,
            press: () {},
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
                  Get.locale == Locale('en', 'US')
                      ? Get.updateLocale(Locale('zh', 'CN'))
                      : Get.updateLocale(Locale('en', 'US'));
                },
                icon: Get.locale == Locale('en', 'US')
                    ? Icon(Icons.language)
                    : Icon(Icons.language),
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
    final theme = Provider.of<ThemeNotifier>(context).currentTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            //cicle shape
            shape: BoxShape.circle,
            color: theme.cardColor,
            border: Border.all(
              color: theme.cardColor,
              width: 5,
            ),
          ),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: theme.cardColor,
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
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
