import 'package:flutter/material.dart';
import 'todo.dart';


class TodoCard extends StatelessWidget {
  final Todo todo;
  final Function delete;
  TodoCard ({ this.todo, this.delete});

    @override

  
  Widget build(BuildContext context){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 10.0),
          child: Padding(
        padding: const EdgeInsets.all(12.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
        Text(
    todo.sem,
    style: TextStyle(
    fontSize: 14.0,
    color:Colors.grey[800],
    ),
    ),
      SizedBox(height: 6.0),
      Text(
    todo.text,
    style:  TextStyle(
    fontSize: 18.0,
    color:Colors.grey[600],
    ),
    ),
  
  
    SizedBox(height:8.0),
    FlatButton.icon(
    onPressed: delete,
    label: Text(''),
    icon: Icon(Icons.delete),
    )
    ],
    ),
    ),
    );
  }
}