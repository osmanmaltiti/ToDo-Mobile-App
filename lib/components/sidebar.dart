import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          CircleAvatar(
            minRadius: 60,
            backgroundColor: Colors.black45,
            child: Image.asset(
              'assets/images/joyboy.jpeg',
              width: 120,
              fit: BoxFit.contain,
            ),
          ),
          const Center(
            child: Text(
              'Joy Boy',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    ));
  }
}
