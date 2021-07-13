import 'package:flutter/material.dart';
import 'package:todoy/models/RawTasks.dart';
import 'screens/homeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RawTasks(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: TaskScreen(),
      ),
    );
  }
}
