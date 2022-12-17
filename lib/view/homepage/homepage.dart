import 'package:flutter/material.dart';
import 'package:todo_app/components/sidebar.dart';
import 'package:todo_app/model/list-buttons.model.dart';
import 'package:todo_app/view/homepage/components/list-buttons.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[200],
      drawer: const Sidebar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (() => _scaffoldKey.currentState?.openDrawer()),
                    icon: const Icon(
                      Icons.menu_rounded,
                      size: 35,
                    ),
                    alignment: Alignment.topLeft,
                    iconSize: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: CircleAvatar(
                      minRadius: 30,
                      backgroundColor: Colors.black45,
                      backgroundImage: AssetImage(
                        'assets/images/joyboy.jpeg',
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text(
                  "Lists",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: listButtonData
                    .map((buttonData) => ListButtons(
                          title: buttonData.title,
                          icon: buttonData.icon,
                          iconColor: buttonData.iconColor,
                          tasks: buttonData.tasks,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
