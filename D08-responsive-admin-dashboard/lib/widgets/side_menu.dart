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
            const DrawerHeader(child: FlutterLogo()),
            DrawerListTile(title: 'Dashboard', svgSrc: Icons.dashboard, onTap: (){}),
            DrawerListTile(title: 'Transaction', svgSrc: Icons.transform, onTap: (){}),
            DrawerListTile(title: 'Task', svgSrc: Icons.task, onTap: (){}),
            DrawerListTile(title: 'Documents', svgSrc: Icons.insert_drive_file_outlined, onTap: (){}),
            DrawerListTile(title: 'Store', svgSrc: Icons.shopping_bag_outlined, onTap: (){}),
            DrawerListTile(title: 'Notification', svgSrc: Icons.notifications, onTap: (){}),
            DrawerListTile(title: 'Profile', svgSrc: Icons.person, onTap: (){}),
            DrawerListTile(title: 'Settings', svgSrc: Icons.settings, onTap: (){}),

          ],
        ),
      ),
    );
  }
}
