import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/taslmanager/model/taskmodel.dart';

class Taskwidgit extends StatelessWidget{
Taskmodel taskk;
Function function;
Taskwidgit(this.taskk,this.function);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return CheckboxListTile(value:taskk.iscomplete,
    title:Text(taskk.name), 
    onChanged: ((value) {
     function(taskk);
         

    }     ));
  }

 
  
  
  

}
