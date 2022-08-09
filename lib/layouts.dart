// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Icon suitableIcon(IconData icon, {Color? color}) {
  return Icon(
    icon,
    color: color,
    size: 15,
  );
}

Widget newMessageIcon(int noOfMessages) {
  return Container(
    padding: EdgeInsets.all(2),
    child: Stack(alignment: Alignment.center, children: [
      Icon(
        Icons.circle,
        color: Colors.green,
        size: 22,
      ),
      Text(
        "$noOfMessages",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      )
    ]),
  );
}

class DisplayPicture extends StatelessWidget {
  const DisplayPicture({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Widget av = CircleAvatar(
      radius: 25,
      foregroundImage: NetworkImage(image),
    );
    return av;
  }
}

class UpperText extends StatelessWidget {
  const UpperText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
    );
  }
}

class BottomText extends StatelessWidget {
  const BottomText({Key? key, required this.message, this.icon})
      : super(key: key);

  final String message;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    double width = 0;
    if (icon != null) {
      width = 4;
    }
    return Row(
      children: [
        icon ?? SizedBox(),
        SizedBox(
          height: 14,
          width: width,
        ),
        Text(message),
      ],
    );
  }
}
