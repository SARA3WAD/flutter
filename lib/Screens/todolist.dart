import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sara/Providers/todolistprovider.dart';
import 'package:sara/Widgets/todolistwidget.dart';

class ToDoList extends StatefulWidget {
  ToDoList({super.key});

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  void initState() {
    super.initState();
    Provider.of<ToDoListProvider>(context, listen: false).getprovider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text(
          'To Do List',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Consumer<ToDoListProvider>(
        builder: (context, object, child) {
          final totaltasks = object.toDoListModel?.total;
          final res = object.toDoListModel?.result;

          if (res == null) {
            return Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('$totaltasks Tasks', style: TextStyle(color: Colors.white)),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: res.length,
                  itemBuilder: (context, index) {
                    return ListWidget(title: res[index]['todo']);
                  },
                ),
              ),
              Center(child: FloatingActionButton(onPressed: (){
                showModalBottomSheet(context: context, builder: (context) {
                  return AddTask();
                },);
              },child: Text('+'),))
            ],
          );
        },
      ),
    );
  }
}
