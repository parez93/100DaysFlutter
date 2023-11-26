import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: FlutterLogo()),
            DrawerListTile(title: 'Dashboard', svgSrc: 'assets/icons/menu_dashboard', onTap: (){}),
            DrawerListTile(title: 'Transaction', svgSrc: 'assets/icons/menu_tran', onTap: (){}),
            DrawerListTile(title: 'Task', svgSrc: 'assets/icons/menu_task', onTap: (){}),
            DrawerListTile(title: 'Documents', svgSrc: 'assets/icons/menu_doc', onTap: (){}),
            DrawerListTile(title: 'Store', svgSrc: 'assets/icons/menu_store', onTap: (){}),
            DrawerListTile(title: 'Notification', svgSrc: 'assets/icons/menu_notification', onTap: (){}),
            DrawerListTile(title: 'Profile', svgSrc: 'assets/icons/menu_profile', onTap: (){}),
            DrawerListTile(title: 'Settings', svgSrc: 'assets/icons/menu_setting', onTap: (){}),

          ],
        ),
      ),
    );
  }
}
