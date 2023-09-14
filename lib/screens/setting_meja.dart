import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingMeja extends StatefulWidget {
  const SettingMeja({super.key});

  @override
  State<SettingMeja> createState() => _SettingMejaState();
}

class _SettingMejaState extends State<SettingMeja> {
  @override
  Widget build(BuildContext context) {
    Color greenland = const Color(0xff0E5F00);
    Color background = const Color(0xffEDEDED);

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Setting Meja Operasi"),
        leading: IconButton(
          onPressed: () => context.goNamed("dashboard"),
          icon: const Icon(Icons.arrow_back),
        ),
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
                        "assets/otris1.jpg",
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
                                _itemSetting("UP", "up.png"),
                                _itemSetting("DOWN", "down.png"),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                _itemSetting("BACK UP", "backup.png"),
                                _itemSetting("BACKDOWN", "backdown.png"),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                _itemSetting("TREND", "trend.png"),
                                _itemSetting("REV", "rev.png"),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                _itemSetting("TILTR", "tiltr.png"),
                                _itemSetting("TILTL", "tiltl.png"),
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

Widget _itemSetting(String judul, String gambar) {
  Color greenland = const Color(0xff0E5F00);
  return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Card(
          color: greenland,
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
      ));
}
