import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String category = 'Select';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "New Category",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          DropdownButton(
            value: category,
            isExpanded: true,
            style: const TextStyle(fontSize: 19, color: Colors.black),
            items: ['Select', 'Work', 'Home', 'School', 'Music', 'Travel']
                .map((String option) => DropdownMenuItem(
                      value: option,
                      child: Text(option),
                    ))
                .toList(),
            onChanged: ((value) => setState(() {
                  category = value!;
                })),
            underline: Container(
              height: 2,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Center(
            child: SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: (() => {}),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
                child: const Text('Save'),
              ),
            ),
          ),
          const SizedBox()
        ],
      ),
    );
  }
}
