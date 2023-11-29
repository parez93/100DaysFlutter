import 'package:flutter/material.dart';

class RecentFile {
  final String? title, date, size;
  final IconData? icon;
  final Color? color;

  RecentFile({this.icon, this.title, this.date, this.size, this.color});
}

List demoRecentFiles = [
  RecentFile(
    icon: Icons.broken_image_rounded,
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
    color: Colors.pinkAccent,
  ),
  RecentFile(
    icon: Icons.image,
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
    color: Colors.pink,
  ),
  RecentFile(
    icon: Icons.wordpress,
    title: "Document",
    date: "23-02-2021",
    size: "32.5mb",
    color: Colors.red,
  ),
  RecentFile(
    icon: Icons.music_note,
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
    color: Colors.orange,

  ),
  RecentFile(
    icon: Icons.perm_media,
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
    color: Colors.yellow,
  ),
  RecentFile(
    icon: Icons.picture_as_pdf,
    title: "Sales PDF",
    date: "25-02-2021",
    size: "3.5mb",
    color: Colors.greenAccent,

  ),
  RecentFile(
    icon: Icons.table_view,
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
    color: Colors.lightBlue,

  ),
];
