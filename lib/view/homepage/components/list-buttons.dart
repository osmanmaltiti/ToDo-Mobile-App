// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:todo_app/view/tasks/index.dart';

class ListButtons extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final int tasks;

  const ListButtons(
      {super.key,
      required this.title,
      required this.icon,
      required this.iconColor,
      required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(height: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const TaskPage())));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.topLeft,
            elevation: 5,
            shadowColor: Colors.black38,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 35,
                color: iconColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '$tasks Tasks',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
