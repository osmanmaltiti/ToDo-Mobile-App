import 'package:flutter/material.dart';

class TodoActions extends StatefulWidget {
  const TodoActions({super.key});

  @override
  State<TodoActions> createState() => _TodoActionsState();
}

class _TodoActionsState extends State<TodoActions> {
  dynamic _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Feb 25, 2022',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Call Mom',
                  style: TextStyle(fontSize: 19),
                ),
                Text(
                  '12:00 PM',
                  style: TextStyle(
                    color: Color.fromARGB(174, 70, 69, 69),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Checkbox(
              value: _isChecked,
              onChanged: ((value) => {
                    setState(
                      () => _isChecked = value,
                    )
                  }),
            )
          ],
        )
      ],
    );
  }
}
