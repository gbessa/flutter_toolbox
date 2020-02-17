import 'package:flutter/material.dart';
import 'package:flutter_toolbox/course_london_app_brewery/components/todoey_task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[TaskTile(), TaskTile()],
    );
  }
}
