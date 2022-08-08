// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyStatus(),
        UpdatesTitle(type: "Recent"),
        Status(
          image:
              "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
          name: "Pankaj - The Chhapri",
          time: "Just now",
        ),
        Status(
          image:
              "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
          name: "Ashish (MDAV)",
          time: "40 minutes ago",
        ),
        UpdatesTitle(type: "Viewed"),
        Status(
          image:
              "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
          name: "John",
          time: "Today, 4:40 am",
          type: "viewed",
        ),
        Status(
          image:
              "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
          name: "Frank",
          time: "Yesterday, 11:49 pm",
          type: "viewed",
        ),
        Status(
          image:
              "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
          name: "Lesic",
          time: "Yesterday 11:53 pm",
          type: "viewed",
        ),
      ],
    );
  }
}

class UpdatesTitle extends StatelessWidget {
  const UpdatesTitle({Key? key, required this.type}) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text("$type updates",
          style:
              TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500)),
    );
  }
}

class MyStatus extends StatelessWidget {
  const MyStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Row(
        children: [
          AddStatusDP(
              image:
                  "https://cdn.discordapp.com/attachments/864178503221772308/1005668983804022864/IMG_20220807_081912.jpg"),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Status",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text("Tap to add status update")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AddStatusDP extends StatelessWidget {
  const AddStatusDP({Key? key, required this.image}) : super(key: key);

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
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: ShapeDecoration(
                  shape: CircleBorder(
                      side: BorderSide(color: Colors.white, width: 2))),
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(7, 94, 84, 1),
                radius: 8,
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 19.8,
              )),
        ],
      ),
    );
  }
}

class StatusDP extends StatelessWidget {
  const StatusDP({Key? key, required this.image, required this.type})
      : super(key: key);

  final String image;
  final String type;

  Color statusRingColor({required String type}) {
    if (type == "viewed") {
      return Colors.grey.shade500;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
            shape: CircleBorder(
                side: BorderSide(
                    color: statusRingColor(type: type), width: 2.8))),
        child: Container(
          decoration: ShapeDecoration(
              shape: CircleBorder(
                  side: BorderSide(color: Colors.white, width: 2))),
          child: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(image))),
          ),
        ));
  }
}

class Status extends StatelessWidget {
  const Status(
      {Key? key,
      required this.image,
      required this.name,
      required this.time,
      this.type = ""})
      : super(key: key);

  final String image, name, time, type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 4, right: 4),
      child: Row(
        children: [
          StatusDP(
            image: image,
            type: type,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text(time)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
