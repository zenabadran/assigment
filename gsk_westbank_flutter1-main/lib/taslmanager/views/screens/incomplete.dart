import 'package:flutter/material.dart';
import 'package:flutter_application_1/taslmanager/data/dummydata.dart';
import 'package:flutter_application_1/taslmanager/views/widgets/taskwidgit.dart';

import '../../model/taskmodel.dart';

class incompletetaskscreen extends StatefulWidget{

@override
  State<incompletetaskscreen> createState() =>_incompletetaskscreen();


}

class _incompletetaskscreen extends State<incompletetaskscreen>{

  checktask(Taskmodel taskmodel){
    int index =task.indexOf(taskmodel);
    task[index].iscomplete=!task[index].iscomplete;
    setState(() {
           
         });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return ListView.builder(
    itemCount: task.where((element) => !element.iscomplete).length,
    
    itemBuilder: (context, index) {
      return Taskwidgit(
        task.where((element) => !element.iscomplete).toList()[index],checktask
      );
    });
  }

}