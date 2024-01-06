import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:todo_app/main.dart';
import 'package:todo_app/providers/addtask.dart';
import 'package:provider/provider.dart';
// import 'package:todo_app/screens/homepage.dart';

class TaskDesc extends StatelessWidget {
  var index;
  TaskDesc(this.index);

  @override
  Widget build(BuildContext context) {
    String value = context.read<AddUserTask>().addedtasklist[index];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFEC),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFEC),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            'Task Description',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50.0),
          Container(
              width: double.infinity,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(width: 0.1),
                color: Color(0xFFF1E4C3),
              ),
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              )),
          SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('  '),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.done),
                      onPressed: () {
                        context.read<AddUserTask>().Removetask(index);
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 20.0),
                    IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          context.read<AddUserTask>().Removetask(index);

                          Navigator.pop(context);
                        }),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
