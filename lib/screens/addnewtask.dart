import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/addtask.dart';

class Addtask extends StatelessWidget {
  TextEditingController _addtaskcontroller = TextEditingController();

  String _taskvalue = 'hh';

  Widget build(BuildContext context) {
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
      body: Center(
        child: Container(
          height: 400,
          width: 250,
          alignment: Alignment.center,
          child: Column(children: [
            TextField(
              maxLines: 3,
              controller: _addtaskcontroller,
              decoration: InputDecoration(
                labelText: 'Add your task',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
                width: 100.0,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFFFFFEC),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 16.0,
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(height: 60.0),
            ElevatedButton(
                onPressed: () {
                  _taskvalue = _addtaskcontroller.text;
                  _taskvalue.isEmpty
                      ? null
                      : context.read<AddUserTask>().Adtask(_taskvalue);
                  Navigator.pop(context);
                },
                child: Text('Add Task')),
          ]),
        ),
      ),
    );
  }
}
