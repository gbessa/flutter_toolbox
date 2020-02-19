import 'package:flutter/foundation.dart';
import 'package:flutter_toolbox/course_london_app_brewery/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Take suplements'),
    Task(name: 'Go to the Gym'),
    Task(name: 'Study Flutter', isDone: true)
  ];

  int get taskCount {
    return _tasks.length;
  }

  get tasks => _tasks;

  void addNewTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void taskToggleDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
