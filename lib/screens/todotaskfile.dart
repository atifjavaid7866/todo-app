import 'package:flutter/material.dart';

class TodoTaskList {
  static List<Widget> tasklist = List.generate(
    8,
    (index) => Container(
      margin: EdgeInsets.only(top: 20),
      height: 50.0,
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFEC),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          CircleAvatar(
            foregroundColor: Colors.red,
            radius: 10.0,
            backgroundColor: Colors.green,
          ),
          SizedBox(width: 10.0),
          Text('This is task one'),
        ]),
        Icon(
          Icons.arrow_forward_ios,
          size: 15.0,
        ),
      ]),
    ),
  );

  // ListView.builder(
  //   itemCount: 5,
  //   itemBuilder: (context, index) {
  //     return Container(
  //       height: 50.0,
  //       padding: EdgeInsets.all(10.0),
  //       alignment: Alignment.center,
  //       decoration: BoxDecoration(
  //         color: Color(0xFFFFFFEC),
  //         borderRadius: BorderRadius.circular(20.0),
  //       ),
  //       child:
  //           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //         Row(children: [
  //           CircleAvatar(
  //             foregroundColor: Colors.red,
  //             radius: 10.0,
  //             backgroundColor: Colors.green,
  //           ),
  //           SizedBox(width: 10.0),
  //           Text('This is task one'),
  //         ]),
  //         Icon(
  //           Icons.arrow_forward_ios,
  //           size: 15.0,
  //         ),
  //       ]),
  //     );
  //   },
  // );
  // // static List gettasklist() {
  // //   return tasklist;
  // // }
  // // const TodoTaskList({
  // //   super.key,
  // // });

  // Widget build(BuildContext context) {
  //   return Container(
  //       width: double.infinity,
  //       height: 50.0,
  //       margin: EdgeInsets.only(
  //         left: 20.0,
  //         right: 20.0,
  //         top: 20.0,
  //       ),
  //       child: Column(
  //         children: [
  //           Container(
  //             height: 50.0,
  //             padding: EdgeInsets.all(10.0),
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //               color: Color(0xFFFFFFEC),
  //               borderRadius: BorderRadius.circular(20.0),
  //             ),
  //             child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Row(children: [
  //                     CircleAvatar(
  //                       foregroundColor: Colors.red,
  //                       radius: 10.0,
  //                       backgroundColor: Colors.green,
  //                     ),
  //                     SizedBox(width: 10.0),
  //                     Text('This is task one'),
  //                   ]),
  //                   Icon(
  //                     Icons.arrow_forward_ios,
  //                     size: 15.0,
  //                   ),
  //                 ]),
  //           ),
  //           SizedBox(height: 10.0),
  //           Container(
  //             height: 50.0,
  //             padding: EdgeInsets.all(10.0),
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //               color: Color(0xFFFFFFEC),
  //               borderRadius: BorderRadius.circular(20.0),
  //             ),
  //             child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Row(children: [
  //                     CircleAvatar(
  //                       foregroundColor: Colors.red,
  //                       radius: 10.0,
  //                       backgroundColor: Colors.green,
  //                     ),
  //                     SizedBox(width: 10.0),
  //                     Text('This is task one'),
  //                   ]),
  //                   Icon(
  //                     Icons.arrow_forward_ios,
  //                     size: 15.0,
  //                   ),
  //                 ]),
  //           ),
  //           SizedBox(height: 10.0),
  //           Container(
  //             height: 50.0,
  //             padding: EdgeInsets.all(10.0),
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //               color: Color(0xFFFFFFEC),
  //               borderRadius: BorderRadius.circular(20.0),
  //             ),
  //             child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Row(children: [
  //                     CircleAvatar(
  //                       foregroundColor: Colors.red,
  //                       radius: 10.0,
  //                       backgroundColor: Colors.green,
  //                     ),
  //                     SizedBox(width: 10.0),
  //                     Text('This is task one'),
  //                   ]),
  //                   Icon(
  //                     Icons.arrow_forward_ios,
  //                     size: 15.0,
  //                   ),
  //                 ]),
  //           ),
  //           SizedBox(height: 10.0),
  //           Container(
  //             height: 50.0,
  //             padding: EdgeInsets.all(10.0),
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //               color: Color(0xFFFFFFEC),
  //               borderRadius: BorderRadius.circular(20.0),
  //             ),
  //             child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Row(children: [
  //                     CircleAvatar(
  //                       foregroundColor: Colors.red,
  //                       radius: 10.0,
  //                       backgroundColor: Colors.green,
  //                     ),
  //                     SizedBox(width: 10.0),
  //                     Text('This is task one'),
  //                   ]),
  //                   Icon(
  //                     Icons.arrow_forward_ios,
  //                     size: 15.0,
  //                   ),
  //                 ]),
  //           ),
  //           SizedBox(height: 10.0),
  //           Container(
  //             height: 50.0,
  //             padding: EdgeInsets.all(10.0),
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //               color: Color(0xFFFFFFEC),
  //               borderRadius: BorderRadius.circular(20.0),
  //             ),
  //             child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Row(children: [
  //                     CircleAvatar(
  //                       foregroundColor: Colors.red,
  //                       radius: 10.0,
  //                       backgroundColor: Colors.green,
  //                     ),
  //                     SizedBox(width: 10.0),
  //                     Text('This is task one'),
  //                   ]),
  //                   Icon(
  //                     Icons.arrow_forward_ios,
  //                     size: 15.0,
  //                   ),
  //                 ]),
  //           ),
  //         ],
  //       ));
}
