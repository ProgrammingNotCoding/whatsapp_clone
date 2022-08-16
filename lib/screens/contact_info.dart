// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContactInfoScreen extends StatelessWidget {
  const ContactInfoScreen({Key? key, required this.name, required this.dp})
      : super(key: key);

  final String name, dp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     actions: [
      //       IconButton(
      //         onPressed: () => {},
      //         icon: Icon(Icons.more_vert),
      //         splashRadius: 20,
      //       ),
      //     ],
      //     leadingWidth: 28,
      //     toolbarHeight: 50,
      //     title: InkWell(
      //       onTap: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => ContactInfoScreen(
      //                       name: name,
      //                       dp: dp,
      //                     )));
      //       },
      //       child: Row(
      //         children: [
      //           CircleAvatar(
      //             backgroundImage: NetworkImage(dp),
      //             radius: 18,
      //           ),
      //           SizedBox(
      //             width: 10,
      //           ),
      //           Text(name,
      //               style: TextStyle(
      //                 fontSize: 16,
      //               )),
      //         ],
      //       ),
      //     )),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: Icon(Icons.more_vert))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 44,
                      foregroundImage: NetworkImage(dp),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Text(
                      "+XX 12340 09871",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14),
                    ),
                    Row(
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.call),
                            label: Text("Audio")),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Divider(
              height: 10,
              thickness: 10,
              color: Color.fromRGBO(236, 235, 233, 1)),
          Container(
            height: 60,
            padding: EdgeInsets.fromLTRB(12, 10, 8, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Battery about to die",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "27 April",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                )
              ],
            ),
          ),
          Divider(
              height: 10,
              thickness: 10,
              color: Color.fromRGBO(236, 235, 233, 1))
        ],
      ),
    );
  }
}
