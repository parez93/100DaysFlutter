import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData svgSrc;
  final VoidCallback onTap;


  const DrawerListTile({super.key, required this.title, required this.svgSrc, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(svgSrc, size: 16,),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
      horizontalTitleGap: 0.0,
      onTap: onTap,
    );
  }
}
