//This is whats app StatelessWidget for chat UI.
import 'package:flutter/material.dart';

import 'images.dart';

class WhatsApp extends StatelessWidget {
  WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeappbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            lock(icon: Icons.lock, text: "Locked Chats"),
            lock(icon: Icons.archive, text: "Archived", counter: 1),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: names.length,
              itemBuilder: (context, index) => chats(
                image: images[index],
                name: names[index],
                msg: msg[index],
                time: times[index],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }

  AppBar homeappbar() {
    return AppBar(
      backgroundColor: Colors.green[600],
      title: Text(
        "What'sApp",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),
      ),
      actions: [
        Icon(Icons.camera_alt_outlined, color: Colors.white),
        SizedBox(width: 10),
        Icon(Icons.search, color: Colors.white),
        SizedBox(width: 10),
        Icon(Icons.more_vert, color: Colors.white),
        SizedBox(width: 10),
      ],
    );
  }

  Widget lock({required IconData icon, required String text, int? counter}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        children: [
          SizedBox(width: 20),
          Icon(icon, color: Colors.green, size: 30),
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          if (counter != null) Text("$counter"),
        ],
      ),
    );
  }

  Widget chats({
    required String image,
    required String name,
    required String msg,
    required String time,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 5, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            backgroundImage: NetworkImage(image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(msg),
              ],
            ),
          ),
          Spacer(),
          Text(time),
        ],
      ),
    );
  }

  List names = [
    "yousef",
    "ali",
    "mohamed",
    "ahmed",
    "yousef",
    "ali",
    "mohamed",
    "ahmed",
    "yousef",
    "ali",
    "mohamed",
    "ahmed",
  ];
  List images = [
    image1,
    image4,
    image1,
    image4,
    image1,
    image4,
    image1,
    image4,
    image1,
    image4,
    image1,
    image4,
  ];
  List msg = [
    "hello mr yousef",
    "how are you ali",
    "i'm busy mohamed",
    "call me ahmed",
    "hello mr yousef",
    "how are you ali",
    "i'm busy mohamed",
    "call me ahmed",
    "hello mr yousef",
    "how are you ali",
    "i'm busy mohamed",
    "call me bluedragon",
  ];
  List times = [
    "10:20am",
    "2:45am",
    "8:50pm",
    "9:00pm",
    "10:20am",
    "2:45am",
    "8:50pm",
    "9:00pm",
    "10:20am",
    "2:45am",
    "8:50pm",
    "9:00pm",
  ];
}
