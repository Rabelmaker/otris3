import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                      _itemCard("1.png", "OT Room 01", "Akbar Maulana"),
                      _itemCard("2.png", "OT Room 02", "Randi Andrio")
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      _itemCard("3.png", "OT Room 03", "Ading Maulana"),
                      _itemCard("4.png", "OT Room 04", "Arif Rahman")
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _itemMenu("settings.png"),
                _itemMenu("user.png"),
                _itemMenu("whatsapp.png"),
                _itemMenu("info.png"),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _itemCard(String gambar, String judul, String nama) {
    return Flexible(
        flex: 1,
        child: InkWell(
          onTap: () {
            if (judul == "OT Room 01") {
              context.goNamed('dashboard');
            }
            if (judul == "OT Room 02") {
              context.goNamed('dashboard');
            }
            if (judul == "OT Room 03") {
              context.goNamed('dashboard');
            }
            if (judul == "OT Room 04") {
              context.goNamed('dashboard');
            }
          },
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/$gambar",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          judul,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: Colors.white),
                        ),
                        Text(
                          nama,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        Text(
                          formatDate(
                              DateTime(2023, 09, 11), [d, '-', M, '-', yyyy]),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget _itemMenu(String menu) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: SizedBox(
      height: 25,
      width: 25,
      child: Image.asset("assets/$menu"),
    ),
  );
}
