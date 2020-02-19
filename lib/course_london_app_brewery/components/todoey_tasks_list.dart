import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/todoey_task_tile.dart';
import 'package:flutter_toolbox/course_london_app_brewery/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          //ListView Builder usado por ser Dinamico e poder trabalhar com grande qtd de itens com performance.
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.taskToggleDone(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
