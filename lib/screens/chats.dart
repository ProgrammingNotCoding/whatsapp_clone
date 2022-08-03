// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
        status: 0,
      ),
      Chat(
          dp: "https://thumbs.dreamstime.com/b/vector-illustration-avatar-dummy-logo-collection-image-icon-stock-isolated-object-set-symbol-web-137160339.jpg",
          name: "John",
          message: "Ok I'll do it."),
      Chat(
        dp: "https://c6oxm85c.cloudimg.io/cdno/n/q85/https://az617363.vo.msecnd.net/imgmodels/models/MD10002954/untit9521a9013a921a3bbb56d9fe8f5f9779_thumb3872f63f05c818fa90fb01d6a7d89cbe_thumb.jpg",
        name: "Paige",
        message: "Done!",
        status: 2,
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
        this.status = 1})
      : super(key: key);

  final String dp;
  final String name;
  final String message;
  final int status;

  Widget isNewMessage(status) {
    if (status == 0) {
      return Container(
        width: 17,
        height: 22,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Eo_circle_green_number-1.svg/640px-Eo_circle_green_number-1.svg.png"))),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 2, 2),
      child: Row(
        children: [
          DisplayPicture(
            image: dp,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ContactName(
                      name: name,
                    ),
                  ],
                ),
                Message(
                  message: message,
                  status: status,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: isNewMessage(status),
          )
        ],
      ),
    );
  }
}
class Message extends StatelessWidget {
  const Message({Key? key, required this.message, this.status = 1})
      : super(key: key);

  final String message;
  final int status;

  Widget getIcon(status) {
    if (status == 0) {
      return Container();
    } else if (status == 1) {
      return Icon(
        Icons.done,
        size: 14,
      );
    } else {
      return Icon(
        Icons.done_all,
        size: 14,
        color: Colors.blue.shade400,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getIcon(status),
        SizedBox(
          height: 14,
          width: 4,
        ),
        Text(message),
      ],
    );
  }
}

class ContactName extends StatelessWidget {
  const ContactName({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
    );
  }
}

class DisplayPicture extends StatelessWidget {
  const DisplayPicture({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49,
      height: 49,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(image))),
    );
  }
}
