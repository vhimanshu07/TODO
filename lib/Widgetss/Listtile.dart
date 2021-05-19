import 'package:flutter/material.dart';
import 'Listtile.dart';
import 'package:provider/provider.dart';

class listile extends StatelessWidget {
  final String text;

 final bool ischeck;
 final Function checkedboxcallback;
 final Function Longpress;
 listile({@required this.text,this.ischeck,this.checkedboxcallback,this.Longpress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text,style: TextStyle(decoration: ischeck?TextDecoration.lineThrough:null ),),
        trailing:Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: ischeck,
          onChanged:checkedboxcallback,
        ),
      onLongPress: Longpress,
    );
  }
}