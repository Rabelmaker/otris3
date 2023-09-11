import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Color greenland = const Color(0xff0E5F00);
    Color background = const Color(0xffEDEDED);
    Color parameter1 = const Color(0xff18A900);
    Color parameter2 = const Color(0xff173BBD);
    Color parameter4 = const Color(0xff3E6D77);
    Color parameter5 = const Color(0xffFF7F09);
    Color parameter6 = const Color(0xffAD0404);

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Ruang OT 01"),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: SizedBox(
                            height: 350,
                            child: Image.asset(
                              "assets/operasi.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                        flex: 1,
                        child: ListView(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      color: greenland,
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                const Expanded(
                                  child: Text(
                                    "Pasien Monitor",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 255,
                              width: double.infinity,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        _itemPasien(parameter1, "Heart",
                                            "heartbeat.png", "60 bpm"),
                                        _itemPasien(parameter1, "Heart",
                                            "heartbeat.png", "60 bpm")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      color: greenland,
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                const Expanded(
                                  child: Text(
                                    "Anastesi",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 255,
                              width: double.infinity,
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _itemPasien(Color warna, String parameter, String gambar, String value) {
  return Flexible(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        tileColor: warna,
        title: Text(
          parameter,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          value,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
        ),
        leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/$gambar")),
      ),
    ),
  );
}
