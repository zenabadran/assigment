import 'package:flutter/material.dart';
import 'package:flutter_application_1/taslmanager/data/dummydata.dart';
import 'package:flutter_application_1/taslmanager/model/taskmodel.dart';
import 'package:flutter_application_1/taslmanager/views/widgets/taskwidgit.dart';

class completetaskscreen extends StatefulWidget{

@override
  State<completetaskscreen> createState() =>_completetaskscreent();


}




class _completetaskscreent extends State<completetaskscreen>{
  @override
  checktask(Taskmodel taskmodel){
    int index =task.indexOf(taskmodel);
    task[index].iscomplete=!task[index].iscomplete;
    setState(() {
           
         });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
   return ListView.builder(
    itemCount: task.where((element) => element.iscomplete).length,
    
    itemBuilder: (context, index) {
      return Taskwidgit(
        task.where((element) => element.iscomplete).toList()[index],checktask
      );
    });
  }
  


}