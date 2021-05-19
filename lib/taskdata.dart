import 'package:flutter/foundation.dart';
import 'package:todo/modal.dart';
import 'dart:collection';
import 'package:todo/taskdata.dart';
class TaskData extends ChangeNotifier{
  List<Task>_task=[
//    Task(name:'Buy milk'),
//    Task(name:'Buy vegetable'),
//    Task(name:'Buy curd'),
  ];
 UnmodifiableListView<Task> get tasks
  {
    return UnmodifiableListView(_task);
  }
  int get taskcount
  {
    return _task.length;
  }
  void addtask(String newtask)
  {
    final y=Task(name: newtask);
    print(newtask);
    _task.add(y);
    notifyListeners();
  }
  void updatetask(Task task)
  {
    task.toggledone();
    notifyListeners();
  }
  void deletetask(Task task)
  {
    _task.remove(task);
    notifyListeners();
  }

}