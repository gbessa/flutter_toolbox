import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('task 01'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool value) {
          print(value);
        },
      ),
    );
  }
}
