import 'package:flutter/material.dart';
import 'package:todo/taskdata.dart';
import 'package:todo/Widgetss/Listtile.dart';
import 'package:todo/modal.dart';
import 'package:provider/provider.dart';
class Listview extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder:(context,x,child){
      return ListView.builder(
        itemBuilder: (context,index)
    {
      final tt= x.tasks[index];
      return listile(
        text:tt.name,
        ischeck: tt.isdone,
        checkedboxcallback: (bool state) {
          x.updatetask(tt);
        },
        Longpress: ()
        {
          x.deletetask(tt);
        },
      );
    },
        itemCount:  x.taskcount,
      );
  }
);
  }
}
