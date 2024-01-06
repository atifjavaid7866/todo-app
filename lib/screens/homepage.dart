import 'package:flutter/material.dart';
import 'package:todo_app/providers/addtask.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/screens/imagesgallory.dart';
import 'package:todo_app/screens/donetask.dart';
import 'addnewtask.dart';
import 'package:provider/provider.dart';

import 'taskdesc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Datetime now = DateTime.now();
    DateTime now = DateTime.now();
    String formattedtime = DateFormat('Hm').format(now);
    return Scaffold(
      backgroundColor: Color(0xFFF1E4C3),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Addtask()));
        },
      ),
      body: Column(children: [
        Container(
          //  color: Color(0xFFFFFFEC),
          // margin: EdgeInsets.all(10.0),
          width: double.infinity,
          margin: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              // Drawer(),
              Text(
                'Todo App',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DoneTask()));
                },
                icon: Icon(Icons.task_alt_rounded),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: Color(0xffe9efeb),
          ),
          alignment: Alignment.centerLeft,
          height: 70.0,
          margin: EdgeInsets.symmetric(horizontal: 9.0),
          // color: Color(0xFFFFFFEC),
          child: Padding(
            padding:
                EdgeInsets.only(top: 8.0, right: 8.0, left: 30.0, bottom: 8.0),
            child: Text(
              '"Key to Success Is consistency and goal oriented"',
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // Expanded(child: MyImageGallery()),
        SizedBox(height: 5.0),
        Column(
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.all(20),
                    child: Text('Categorize',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ))),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFEC),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // color: Color(0xFFFFFFEC),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Task23',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          )),
                      Text('Business'),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              color: Colors.pink,
                              height: 5.0,
                              width: 30.0,
                            ),
                            Container(
                                color: Colors.white, width: 10.0, height: 5.0),
                          ],
                        ),
                      )
                    ]),
              ),
              SizedBox(width: 60.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFEC),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // color: Color(0xFFFFFFEC),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Task14',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          )),
                      Text('Personal'),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              color: Colors.pink,
                              height: 5.0,
                              width: 30.0,
                            ),
                            Container(
                                color: Colors.white, width: 10.0, height: 5.0),
                          ],
                        ),
                      )
                    ]),
              ),
            ]),
          ],
        ),
        SizedBox(height: 15.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          alignment: Alignment.centerLeft,
          child: Text('Today\'s Task '),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView.builder(
              itemCount: context.watch<AddUserTask>().addedtasklist.length,
              itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 50.0,
                  // padding: EdgeInsets.all(10.0),
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFEC),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.green,
                    ),
                    title: Text(
                      Provider.of<AddUserTask>(context).addedtasklist[index],
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.done, size: 25.0),
                      onPressed: () {
                        context.read<AddUserTask>().Removetask(index);
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TaskDesc(index)));
                    },
                    subtitle: Text(
                      formattedtime,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  )
                  //  Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Row(children: [
                  //         CircleAvatar(
                  //           foregroundColor: Colors.red,
                  //           radius: 10.0,
                  //           backgroundColor: Colors.green,
                  //         ),
                  //         SizedBox(width: 10.0),
                  //         Text(Provider.of<AddUserTask>(context)
                  //             .addedtasklist[index]),
                  //       ]),
                  //       IconButton(
                  //         icon: Icon(Icons.check_circle, size: 15.0),
                  //         onPressed: () {
                  //           Provider.of<AddUserTask>(context).removetask(index);
                  //         },
                  //       ),
                  //     ]),
                  ),
            ),
          ),
        )

        // context.watch<AddUserTask>().gettask,
      ]),
    );
  }
}

// Container(
//                   margin: EdgeInsets.only(top: 20),
//                   height: 50.0,
//                   padding: EdgeInsets.all(10.0),
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     color: Color(0xFFFFFFEC),
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(children: [
//                           CircleAvatar(
//                             foregroundColor: Colors.red,
//                             radius: 10.0,
//                             backgroundColor: Colors.green,
//                           ),
//                           SizedBox(width: 10.0),
//                           Text('This is task one'),
//                         ]),
//                         Icon(
//                           Icons.arrow_forward_ios,
//                           size: 15.0,
//                         ),
//                       ]),
//                 ),
