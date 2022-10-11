import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/taslmanager/views/screens/all.dart';
import 'package:flutter_application_1/taslmanager/views/screens/complete.dart';
import 'package:flutter_application_1/taslmanager/views/screens/incomplete.dart';
class maintaskscreen extends StatefulWidget {
  
 
  @override
  State<maintaskscreen> createState() => _maintaskscreen();
}

class _maintaskscreen extends State<maintaskscreen> with SingleTickerProviderStateMixin{
  late TabController tabController;

  initalizeTabController(){
      tabController=TabController(length: 3, vsync: this);
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initalizeTabController();
  }

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    drawer: Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(child: Text('z')),
            accountName: Text('zena'), accountEmail: Text('zenabadran2@gmail.com')),
            ListTile(
               title:Text("All Tasks"),
               subtitle: Text("go to all tasks"),
               leading: Icon(Icons.list),
               trailing:Icon(Icons.arrow_forward_ios),
               onTap: () {
                 tabController.animateTo(0);
               },
              
            ),
            ListTile(
               title:Text("complete Tasks"),
               subtitle: Text("go to complete Tasks"),
               leading: Icon(Icons.done),
               trailing:Icon(Icons.arrow_forward_ios),
                onTap: () {
                 tabController.animateTo(1);
               },
              
            ),
            ListTile(
               title: Text("incomplete Tasks"),
               subtitle: Text("go to incomplete Tasks"),
               leading: Icon(Icons.cancel),
               trailing:Icon(Icons.arrow_forward_ios),
                onTap: () {
                 tabController.animateTo(2);
               },
              
            ),
          
           
           

        ],
      ),

    )
    ,
      appBar: AppBar(
        title: Text('task management'),
        bottom: TabBar(
          controller: tabController,
          tabs: [

             Tab( text: 'All task',),
             Tab( text: 'comlete task',),
             Tab( text: 'incom task',),
   
   
        ]),
      ),
    body: TabBarView(
      controller: tabController,
      children: [
             allcreen(),
          completetaskscreen(),
          incompletetaskscreen()
    ],),
   
   );
  }

}