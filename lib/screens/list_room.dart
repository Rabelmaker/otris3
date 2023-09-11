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
        title: const Text("List Room"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.history))
        ],
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/otris.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.7),
                ])),
          ),
          Container(
            padding: const EdgeInsets.all(100),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      _itemCard("loginbackground.png"),
                      _itemCard("loginbackground.png")
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      _itemCard("loginbackground.png"),
                      _itemCard("loginbackground.png")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _itemCard(String gambar) {
    return Flexible(
        flex: 1,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/$gambar"), fit: BoxFit.cover)),
          child: InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ));
  }
}
