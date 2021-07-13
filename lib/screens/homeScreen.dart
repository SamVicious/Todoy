import 'package:flutter/material.dart';
import 'package:todoy/widgets/task_list.dart';
import 'package:todoy/screens/bottom_sheet.dart';
import 'package:todoy/models/RawTasks.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 70.0,
        width: 70.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => AddTask(),
            ),
            child: Icon(
              Icons.add,
              size: 30.0,
              color: Colors.grey[850],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[850],
                      child: Icon(
                        Icons.list,
                        size: 35.0,
                        color: Colors.white,
                      ),
                      radius: 35.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Todoy',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.grey[850],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${Provider.of<RawTasks>(context).tasksCount} task(s)',
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: TasksList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
