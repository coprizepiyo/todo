import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
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
        itemCount: 20,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: Icon(Icons.add),
            title: Text("$index"),
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