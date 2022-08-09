// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/layouts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Chat(
        dp: "https://i.stack.imgur.com/F4eOi.jpg?s=64&g=1",
        name: "Prince Raj",
        message: "Haha yes!",
        time: "Just now",
        newMessage: true,
      ),
      Chat(
          dp: "https://thumbs.dreamstime.com/b/vector-illustration-avatar-dummy-logo-collection-image-icon-stock-isolated-object-set-symbol-web-137160339.jpg",
          name: "Ashish",
          message: "Ok I'll do it.",
          time: "4:20 am",
          icon: suitableIcon(Icons.done)),
      Chat(
        dp: "https://c6oxm85c.cloudimg.io/cdno/n/q85/https://az617363.vo.msecnd.net/imgmodels/models/MD10002954/untit9521a9013a921a3bbb56d9fe8f5f9779_thumb3872f63f05c818fa90fb01d6a7d89cbe_thumb.jpg",
        name: "Paige",
        message: "Done!",
        time: "29/04/22",
        icon: suitableIcon(Icons.done_all, color: Colors.blue.shade400),
      ),
    ]);
  }
}

class Chat extends StatelessWidget {
  const Chat(
      {Key? key,
      required this.dp,
      required this.name,
      required this.message,
      required this.time,
      this.icon,
      this.newMessage = false})
      : super(key: key);

  final String dp, name, message, time;
  final Icon? icon;
  final bool newMessage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Not Implemented Yet!"),
        duration: Duration(seconds: 1),
      )),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DisplayPicture(
              image: dp,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UpperText(
                    text: name,
                  ),
                  BottomText(
                    message: message,
                    icon: icon,
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                        fontSize: 11.3,
                        color: newMessage ? Colors.green : null),
                  ),
                  newMessage ? newMessageIcon(1) : Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
