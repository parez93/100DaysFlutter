import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String title, svgSrc;
  final VoidCallback onTap;


  const DrawerListTile({super.key, required this.title, required this.svgSrc, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        color: Colors.white54,
        height: 16,
        width: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
      horizontalTitleGap: 0.0,
      onTap: onTap,
    );
  }
}
