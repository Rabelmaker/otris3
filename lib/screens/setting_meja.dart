import 'package:flutter/material.dart';

class SettingMeja extends StatefulWidget {
  const SettingMeja({super.key});

  @override
  State<SettingMeja> createState() => _SettingMejaState();
}

class _SettingMejaState extends State<SettingMeja> {
  @override
  Widget build(BuildContext context) {
    Color greenland = const Color(0xff0E5F00);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Setting Meja Operasi"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
              child: Row(
            children: [
              Flexible(flex: 1, child: Image.asset("assets/bedsetting.png")),
              SizedBox(
                width: 32,
              ),
              Flexible(
                  flex: 1,
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
                  )),
            ],
          )),
        ),
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
