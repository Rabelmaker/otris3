import 'package:flutter/material.dart';

class SettingLampu extends StatefulWidget {
  const SettingLampu({super.key});

  @override
  State<SettingLampu> createState() => _SettingLampuState();
}

class _SettingLampuState extends State<SettingLampu> {
  @override
  Widget build(BuildContext context) {
    Color greenland = const Color(0xff0E5F00);
    Color background = const Color(0xffEDEDED);
    Color lampOn = Colors.amber;

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Setting Lampu Operasi"),
      ),
      body: SafeArea(
        child: Center(
            child: Row(
          children: [
            Flexible(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.amber,
                      child: Image.asset(
                        "assets/otris2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                            Colors.transparent,
                            background.withOpacity(0.2),
                            background.withOpacity(1),
                            // Colors.transparent,
                          ])),
                    ),
                  ],
                )),
            SizedBox(
              width: 32,
            ),
            Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(children: [
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                _itemSetting(
                                  "LAMPU 1",
                                  "bulb.png",
                                  lampOn,

                                ),
                                _itemSetting(
                                    "LAMPU 2", "bulb.png", lampOn),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: _itemSetting(
                              "Lampu OT",
                              "bulb.png",
                              lampOn,

                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                _itemSetting(
                                  "SEMUA LAMPU",
                                  "bulb.png",
                                  lampOn,

                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}

Widget _itemSetting(
    String judul, String gambar, Color buttonColor) {
  return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: InkWell(
          onTap: () {},
          child: Card(
            color: buttonColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    judul,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(width: 70, child: Image.asset("assets/$gambar")),
                ]),
          ),
        ),
      ));
}
