import 'package:flutter/material.dart';

class ListRoom extends StatefulWidget {
  const ListRoom({super.key});

  @override
  State<ListRoom> createState() => _ListRoomState();
}

class _ListRoomState extends State<ListRoom> {
  Color greenland = const Color(0xff0E5F00);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenland,
        title: Text("List Room"),
        actions: [
         IconButton(onPressed: (){}, icon: const Icon(Icons.history))
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [

          ],
        )
      ),
    );
  }
}
