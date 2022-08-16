// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/contact_info.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key, required this.name, required this.dp})
      : super(key: key);

  final String name, dp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.videocam),
                splashRadius: 20,
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.call),
                splashRadius: 20,
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.more_vert),
                splashRadius: 20,
              ),
            ],
            leadingWidth: 28,
            toolbarHeight: 50,
            title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactInfoScreen(
                              name: name,
                              dp: dp,
                            )));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(dp),
                    radius: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(name,
                      style: TextStyle(
                        fontSize: 16,
                      )),
                ],
              ),
            )),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png"),
                      fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(4, 0, 4, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.white),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Message",
                              hintStyle: TextStyle(fontSize: 14),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(Icons.emoji_emotions_outlined),
                              suffixIcon: Icon(Icons.attachment)),
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: () => {},
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
