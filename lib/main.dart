import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/Taskscreen.dart';
import 'package:todo/taskdata.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
//      builder: (context)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Taskscreen(),
      ),
    );
  }
}
