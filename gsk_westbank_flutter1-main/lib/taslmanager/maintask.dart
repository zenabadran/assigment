import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/taslmanager/views/screens/all.dart';
import 'package:flutter_application_1/taslmanager/views/screens/complete.dart';
import 'package:flutter_application_1/taslmanager/views/screens/incomplete.dart';

class maintaskscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return DefaultTabController(
     length: 3,
     child: Scaffold(
        appBar: AppBar(
          title: Text('task management'),
          bottom: TabBar(tabs: [
               Tab( text: 'All task',),
               Tab( text: 'comlete task',),
               Tab( text: 'incom task',),
   
   
          ]),
        ),
      body: TabBarView(children: [
               allcreen(),
            completetaskscreen(),
            incompletetaskscreen()
      ],),
   
     ),
   );
  }

}