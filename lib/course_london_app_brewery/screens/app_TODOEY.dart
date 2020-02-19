import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/models/task_data.dart';
import 'package:provider/provider.dart';

import 'app_TODOEY_tasks_screen.dart';

void main() => runApp(Todoey());

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
