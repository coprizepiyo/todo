import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List todoList = [
    {
      'title': 'todo1',
      'desc': ''
    },
    {
      'title': 'todo2',
      'desc': ''
    },
    {
      'title': 'todo3',
      'desc': ''
    },
    {
      'title': 'todo4',
      'desc': ''
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('待办事项'),
        centerTitle: true,
      ),
      body: ListView.builder(
        // padding: EdgeInsets.all(8.0),
        // itemExtent: 20.0,
        itemCount: todoList.length,
        itemBuilder: (BuildContext context, int index){
          String title = todoList[index]['title'];
          return ListTile(
            leading: Icon(Icons.add),
            title: Text("$title"),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: (){},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white
        ),
        onPressed: (){},
      ),
    );
  }
}