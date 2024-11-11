import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sara/Providers/todolistprovider.dart';
class ListWidget extends StatelessWidget {
String title;
ListWidget({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            Text(title,style: TextStyle(color: Colors.black),)
        ],
      ),
    );
  }
}
class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String newtask='';
    var object = Provider.of<ToDoListProvider>(context);

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Add Task",style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter your task")
              ),
              onChanged: (txt){
                newtask=txt;
              },
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){

              if(newtask.trim()!='')
              {
                object.addtaskprovider(newtask);
              }
              Navigator.pop(context);
            }, child: Text("Add New Task"))
          ],
        ),
      ),
    );
  }
}

