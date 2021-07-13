import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'TaskList.dart';

class RawTasks extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Wash utensils'),
    Task(name: 'Brush teeth'),
    Task(name: 'Play chess'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void checkUncheck(Task task) {
    task.toogle();
    notifyListeners();
  }

  void deleteItem(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
