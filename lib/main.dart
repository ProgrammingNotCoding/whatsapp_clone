// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chats.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final cameras = await availableCameras();
  // final camera = cameras.first;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            backgroundColor: Color.fromRGBO(7, 94, 84, 1),
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ]),
          ),
          body: TabBarView(children: [
            Text("Camera: To Be Implemented!"),
            // CameraScreen(
            //   camera: mainCamera,
            // ),
            ChatScreen(),
            Text("Status"),
            Text("Calls"),
          ]),
        ),
      ),
    );
  }
}
