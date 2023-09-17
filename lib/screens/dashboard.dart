import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              Flexible(
                flex: 1,
                child: SizedBox(
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
                          child: SizedBox(
                            height: double.infinity,
                              width: double.infinity,
                              child: Image.asset("assets/otriscontroller.png")),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    _tombolDrawer(
                        Colors.blue, "assets/white-board.png", "On/Off Smartboard"),
                    const SizedBox(
                      height: 16,
                    ),
                    _tombolDrawer(Colors.lime.shade600, "assets/savings-box.png",
                        "On/Off Pass Box"),
                    const SizedBox(
                      height: 16,
                    ),
                    _tombolDrawer(parameter1,
                        "assets/door.png", "On/Off Pintu Besar"),
                    const SizedBox(
                      height: 16,
                    ),
                    _tombolDrawer(parameter3,
                        "assets/door.png", "On/Off Pintu Kecil"),
                    const SizedBox(
                      height: 16,
                    ),
                    _tombolDrawer(parameter5,
                        "assets/energy.png", "On/Off Power Supply"),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Divider(
                        height: 30,
                        thickness: 5,
                        color: Colors.grey,
                      ),
                    ),
                    _itemDrawer("drawer1.png", "Setting Lampu", context),
                    const SizedBox(
                      height: 16,
                    ),
                    _itemDrawer("drawer2.png", "Setting Meja Operasi", context),
                    const SizedBox(
                      height: 16,
                    ),
                    _itemDrawer("drawer4.png", "Input X-ray", context),
                    const SizedBox(
                      height: 16,
                    ),
                    _itemDrawer("drawer3.png", "Input Informasi Pasien", context),
                    const SizedBox(
                      height: 16,
                    ),
                    _itemDrawer("drawer5.png", "Input Rekam Medis", context),
                  ],
                ),
              )
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
                                            greenland, context),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        _itemMenu(
                                            "informasipasien.png",
                                            "Informasi Pasien",
                                            greenland,
                                            context),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        _itemMenu(
                                            "camera.png",
                                            "Teleconference",
                                            greenland,
                                            context),
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

Widget _itemMenu(
    String gambar, String menu, Color warna, BuildContext context) {
  return Flexible(
    flex: 1,
    child: InkWell(
      onTap: () {
        if (menu == "X-ray Viewer") {
          context.goNamed("view_xray");
        }
        if (menu == "Informasi Pasien") {
          context.goNamed("view_pasien");
        }
        if (menu == "Rekam Medis") {
          context.goNamed("view_medis");
        }
        if (menu == "Teleconference") {
          context.goNamed("view_teleconference");
        }
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: warna),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 25, width: 25, child: Image.asset("assets/$gambar")),
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
    ),
  );
}

Widget _itemDrawer(String gambar, String judul, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: InkWell(
      onTap: () {
        if (judul == "Setting Lampu") {
          context.goNamed("setting_lampu");
        }
        if (judul == "Setting Lampu") {
          context.goNamed("setting_lampu");
        }
        if (judul == "Setting Meja Operasi") {
          context.goNamed("setting_meja");
        }
        if (judul == "Input Informasi Pasien") {
          context.goNamed("input_pasien");
        }
        if (judul == "Input Rekam Medis") {
          context.goNamed("input_medis");
        }
        if (judul == "Input X-ray") {
          context.goNamed("input_xray");
        }
      },
      child: Row(
        children: [
          Container(
              height: 30, width: 30, child: Image.asset("assets/$gambar")),
          const SizedBox(
            width: 12,
          ),
          Text(judul)
        ],
      ),
    ),
  );
}

Widget _tombolDrawer(Color warna, String icon, String judul) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 16,
    ),
    child: SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(warna)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(icon),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              judul,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 14
              ),
            )
          ],
        ),
      ),
    ),
  );
}
