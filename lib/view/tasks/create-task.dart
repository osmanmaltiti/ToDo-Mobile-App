import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  String task = '';
  TimeOfDay _from = TimeOfDay.now();
  TimeOfDay _to = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 49,
                  ),
                  const Text(
                    "New Task",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: (() => {Navigator.of(context).pop()}),
                    icon: const Icon(
                      Icons.close,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "What are you planning?",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                maxLines: 3,
                onChanged: ((value) => {
                      setState((() => task = value)),
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.watch_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'From :',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: (() => showTimePicker(
                          context: context,
                          initialTime: _from,
                        ).then(
                          (value) => setState(
                            () => {_from = value!},
                          ),
                        )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[100], elevation: 0),
                    child: Text(
                      _from.format(context),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.watch_off_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'To :',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: (() => showTimePicker(
                          context: context,
                          initialTime: _to,
                        ).then(
                          (value) => setState(
                            () => {_to = value!},
                          ),
                        )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[100], elevation: 0),
                    child: Text(
                      _to.format(context),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (() => {}),
                      child: const Text('Create Task'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
