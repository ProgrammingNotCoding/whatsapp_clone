// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/layouts.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [CallLog()],
    );
  }
}

class CallLog extends StatelessWidget {
  const CallLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DisplayPicture(
              image:
                  "https://cdn.thenewstack.io/media/2018/05/e49988cf-tree-3369950_640.jpg"),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              UpperText(text: "Spooky"),
              Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: BottomText(
                  message: "Yesterday, 9:34 am",
                  icon: suitableIcon(Icons.call_received, color: Colors.green),
                ),
              ),
            ]),
          ),
          Spacer(),
          Icon(
            Icons.videocam,
            color: Color.fromRGBO(7, 94, 84, 1),
          )
        ],
      ),
    );
  }
}
