import 'package:flutter/material.dart';
import 'package:flutter_application_1/taslmanager/data/dummydata.dart';
import 'package:flutter_application_1/taslmanager/views/widgets/taskwidgit.dart';

import '../../model/taskmodel.dart';

class allcreen extends StatelessWidget{
  @override
  checktask(Taskmodel taskmodel){
    int index =task.indexOf(taskmodel);
    task[index].iscomplete=!task[index].iscomplete;
    
  }
  Widget build(BuildContext context) {
    // TODO: implement build
   return ListView.builder(
    itemCount: task.length,
    
    itemBuilder: (context, index) {
      return Taskwidgit(
        task[index],checktask
      );
    });
  }

}