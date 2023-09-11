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
    Color parameter3 = const Color(0xff3E6D77);
    Color parameter4 = const Color(0xff177331);
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 3,
                  child: SizedBox(
                    width: double.infinity,
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
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 330,
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      _itemPasien(parameter1, "Heart",
                                          "heartbeat.png", "60 bpm"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      _itemPasien(parameter2, "SPO2",
                                          "spo2.png", "60 bpm")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemPasien(parameter3, "Resp",
                                          "breath-in.png", "60 bpm"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      _itemPasien(parameter4, "Source",
                                          "plus.png", "60 bpm")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemPasien(parameter5, "Temp1",
                                          "thermometer.png", "60 bpm"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      _itemPasien(parameter6, "Art",
                                          "bloodpress.png", "60 bpm")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemPasien(parameter5, "Temp2",
                                          "thermometer.png", "60 bpm"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      _itemPasien(parameter6, "AO",
                                          "bloodpress.png", "120/100 mmhg")
                                    ],
                                  ),
                                ],
                              ),
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
                                    fontSize: 24, fontWeight: FontWeight.bold),
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _itemPasien(Color warna, String parameter, String gambar, String value) {
  return Flexible(
    flex: 1,
    child: Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset("assets/$gambar"),
              ),
            ),
            SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  parameter,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  value,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
