import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy/models/RawTasks.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff161616),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 30.0),
            child: Column(
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: TextField(
                    autofocus: true,
                    onSubmitted: (query) {
                      Provider.of<RawTasks>(context, listen: false)
                          .addTask(query);
                      Navigator.pop(context);
                    },
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Press me!',
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
