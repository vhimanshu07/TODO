import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/modal.dart';
import 'package:todo/taskdata.dart';

class Addtask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String task;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Add a task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                task = value;
              },
            ),
            FlatButton(
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addtask(task);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
