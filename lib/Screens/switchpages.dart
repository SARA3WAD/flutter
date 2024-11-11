import 'package:flutter/material.dart';
import 'package:sara/Screens/prayertime.dart';
import 'package:sara/Screens/randomuser.dart';
import 'package:sara/Screens/todolist.dart';
class Switchpages extends StatelessWidget {
   Switchpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('Choose Page',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ToDoList(),));
            }, child: Text('To Do List Page'),style: ButtonStyle(iconColor: WidgetStatePropertyAll(Colors.pink)
            ),),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PrayerTime(),));
            }, child: Text('Prayer Time Page')),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:  (context) => RandomUser(),));
            }, child: Text('Random User Page')),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){

            }, child: Text('News Paper Page'))
          ],
        ),
      ),
    );
  }
}
