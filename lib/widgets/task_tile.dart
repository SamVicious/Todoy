import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function(void) stateToogle;
  final Function()? longPressCallback;
  TaskTile(
      {required this.isChecked,
      required this.title,
      required this.stateToogle,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        "$title",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.grey[850],
        onChanged: stateToogle,
      ),
    );
  }
}
