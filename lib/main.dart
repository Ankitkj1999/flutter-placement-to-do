import 'package:flutter/material.dart';
import 'todo.dart';
import 'todo_card.dart';

void main() => runApp(MaterialApp(
  home: TodoList()
));

class TodoList extends StatefulWidget{
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  List<Todo> todos = [
    Todo ( sem: 'Semester 1', text: 'One low level programing language. Like C.'),
    Todo ( sem : 'Semester 1', text: 'Internet Programing with HTML and CSS.'),
    Todo ( sem : 'Semester 2', text: 'Object Oriented Programing with C++ or Java.'),
    Todo ( sem : 'Semester 2', text: 'Internet Programing with Javascript.'),
    Todo ( sem : 'Semester 3', text: 'Programing with Python.'),
    Todo ( sem : 'semester 3', text: 'Data Structure and Algorithms'),
    Todo (sem: 'Semester 4', text: 'Networking.'),
    Todo ( sem : 'Semester 4', text : 'Operating system.')
  ];

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Placemnt To-Do's"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:Center(child: ListView(shrinkWrap: true,//for scroll
      children: <Widget>[ 
      Column(
        children: todos.map((todo) => TodoCard(
          todo: todo,
          delete: (){
            setState (() {
              todos.remove(todo);
            });
          }
        )).toList(),
      )
  ]
  ),
  )
    );
  }

}