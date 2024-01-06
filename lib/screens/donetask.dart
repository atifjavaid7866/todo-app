// import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:todo_app/main.dart';
import 'package:todo_app/providers/addtask.dart';
import 'package:provider/provider.dart';
// import 'package:todo_app/screens/homepage.dart';

class DoneTask extends StatelessWidget {
  // var index;

  @override
  Widget build(BuildContext context) {
    // String value = context.read<AddUserTask>().addedtasklist[index];
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
            'Completed Task',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50.0),
          Expanded(
              child: ListView.builder(
                  itemCount: context.read<AddUserTask>().donetasklist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10.0, left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF1E4C3),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                            context.watch<AddUserTask>().donetasklist[index]),
                      ),
                    );
                  })),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
