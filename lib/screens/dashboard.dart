import 'package:circular_countdown_timer/circular_countdown_timer.dart';
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
    Color backgroundRing = const Color(0xffECECEC);
    Color parameter1 = const Color(0xff18A900);
    Color parameter2 = const Color(0xff173BBD);
    Color parameter3 = const Color(0xff3E6D77);
    Color parameter4 = const Color(0xff177331);
    Color parameter5 = const Color(0xffFF7F09);
    Color parameter6 = const Color(0xffAD0404);
    Color parameter7 = const Color(0xff2F6582);
    Color parameter8 = const Color(0xff2A4CD2F);

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Ruang OT 01"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 120,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/drawer.png",
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Image.asset("assets/otriscontroller.png"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffFF7F09))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.asset("assets/bulb.png"),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text("On/Off Semua Lampu")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xff2196F3))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.asset("assets/door.png"),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text("Buka / Tutup Pintu")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Divider(
                  height: 30,
                  thickness: 5,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/drawer1.png")),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Setting Lampu")
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/drawer2.png")),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Setting Meja Operasi")
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/drawer3.png")),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Input X-Ray")
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/drawer4.png")),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Input Informasi Pasien")
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/drawer5.png")),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Input Informasi Rekam Medis")
                  ],
                ),
              ),
            ],
          ),
        ),
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
                  child: Column(
                    children: [
                      Flexible(
                        flex: 4,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Flexible(
                        flex: 3,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Flexible(
                                        flex: 1,
                                        child: Text(
                                          "Timer Anestesi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Flexible(
                                        flex: 4,
                                        child: CircularCountDownTimer(
                                            width: double.infinity,
                                            height: double.infinity,
                                            duration: 1200,
                                            backgroundColor: backgroundRing,
                                            fillColor: parameter1,
                                            ringColor: Colors.grey),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: parameter7,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: const Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Text(
                                              "Waktu Mulai : ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: parameter7,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: const Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Text(
                                              "Waktu Sekarang : ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              flex: 2,
                              child: Column(
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: double.infinity,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: double.infinity,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        _itemMenu("xray.png", "X-ray Viewer",
                                            greenland),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        _itemMenu("informasipasien.png",
                                            "Informasi Pasien", greenland),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        _itemMenu("rekammedis.png",
                                            "Rekam Medis", greenland),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        _itemMenu("camera.png",
                                            "Teleconference", greenland),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Flexible(
                                      flex: 1,
                                      child: SizedBox(
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                            style: const ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Color(0xff18A900))),
                                            onPressed: () {},
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.check),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text("Selesai Operasi")
                                              ],
                                            )),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemPasien(parameter2, "SPO2",
                                          "spo2.png", "60 bpm")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemPasien(parameter3, "Resp",
                                          "breath-in.png", "60 bpm"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemPasien(parameter4, "Source",
                                          "plus.png", "60 bpm")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemPasien(parameter5, "Temp1",
                                          "thermometer.png", "60 bpm"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemPasien(parameter6, "Art",
                                          "bloodpress.png", "60 bpm")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemPasien(parameter5, "Temp2",
                                          "thermometer.png", "60 bpm"),
                                      const SizedBox(
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
                          height: 408,
                          width: double.infinity,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      _itemAnastesi(parameter7, "Ppeak", "40"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemAnastesi(parameter7, "Pmean", "16"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemAnastesi(parameter7, "Pplat", "2")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemAnastesi(parameter7, "PEEP", "500"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemAnastesi(parameter7, "Vte", "500"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemAnastesi(parameter7, "Vti", "6.0")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemAnastesi(parameter7, "Mve", "6.0"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemAnastesi(parameter8, "Mvi", "18"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemAnastesi(parameter8, "PIF", "-60")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemAnastesi(parameter8, "PEF", "38"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemAnastesi(parameter8, "Et", "2"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      _itemAnastesi(parameter8, "Fi", "12")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      _itemAnastesi(parameter8, "awRR", "40"),
                                    ],
                                  ),
                                ],
                              ),
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
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    parameter,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    value,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _itemAnastesi(Color warna, String parameter, String value) {
  return Flexible(
      flex: 1,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: warna,
        ),
        child: Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              parameter,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ));
}

Widget _itemMenu(String gambar, String menu, Color warna) {
  return Flexible(
    flex: 1,
    child: Container(
      height: double.infinity,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: warna),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 25, width: 25, child: Image.asset("assets/$gambar")),
          const SizedBox(
            height: 8,
          ),
          Text(
            menu,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    ),
  );
}
