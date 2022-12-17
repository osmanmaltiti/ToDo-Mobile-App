import 'package:flutter/material.dart';

class ListButtonModel {
  final String title;
  final IconData icon;
  final Color iconColor;
  final int tasks;

  ListButtonModel(this.title, this.icon, this.iconColor, this.tasks);
}

List<ListButtonModel> listButtonData = [
  ListButtonModel('All', Icons.line_style_sharp, Colors.blue, 45),
  ListButtonModel('Work', Icons.work, Colors.orange, 3),
  ListButtonModel(
      'Music', Icons.headphones, const Color.fromARGB(255, 29, 100, 90), 12),
  ListButtonModel('Travel', Icons.airplanemode_active_rounded, Colors.green, 9),
  ListButtonModel('Home', Icons.home, Colors.black, 12),
  ListButtonModel('Study', Icons.book_outlined, Colors.teal, 9),
];
