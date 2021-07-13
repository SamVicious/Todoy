import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoy/models/RawTasks.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<RawTasks>(
      builder: (BuildContext context, rawTasks, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: rawTasks.tasks[index].state,
              title: rawTasks.tasks[index].name,
              stateToogle: (state) {
                rawTasks.checkUncheck(rawTasks.tasks[index]);
              },
              longPressCallback: () {
                rawTasks.deleteItem(rawTasks.tasks[index]);
              },
            );
          },
          itemCount: rawTasks.tasks.length,
        );
      },
    );
  }
}
