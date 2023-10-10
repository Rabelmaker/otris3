import 'package:flutter/material.dart';

class ControlOtris extends StatefulWidget {
  const ControlOtris({super.key});

  @override
  State<ControlOtris> createState() => _ControlOtrisState();
}

class _ControlOtrisState extends State<ControlOtris> {
  @override
  Widget build(BuildContext context) {
    Color greenland = const Color(0xff0E5F00);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenland,
        title: Text("Otris Controller"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Control Panel",
                      style: TextStyle(
                          color: greenland,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: Colors.grey.shade200),
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      _itemControl("Lighting 1", "bulb.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemControl("Lighting 2", "bulb.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemControl("OT Lamp", "surgery.png")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      _itemControl("Passbox", "savings-box.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemControl("Smartboard", "tv.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemControl("Small Door", "door.png")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      _itemControl("Big Door", "door.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemControl("PGM", "pgm.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemControl("Spare", "spare.png")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 32,
              ),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Meja Operasi",
                      style: TextStyle(
                          color: greenland,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: Colors.grey.shade200),
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      _itemSetting("Up", "up.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemSetting("Down", "down.png")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      _itemSetting("Back Up", "backup.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemSetting("Back Down", "backdown.png")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      _itemSetting("Trend", "trend.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemSetting("Rev", "rev.png")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      _itemSetting("TILTR", "tiltr.png"),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      _itemSetting("TILTL", "tiltl.png")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        )
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
}

Widget _itemSetting(String judul, String gambar) {
  Color greenland = const Color(0xff0E5F00);
  Color greenland2 = const Color(0xff0E5F00).withOpacity(0.7);
  return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Card(
          color: greenland2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: greenland,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/$gambar"),
                      )
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    judul,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
        ),
      ));
}

Widget _itemControl(String judul, String gambar) {
  Color blueland = const Color(0xff3E6D77);
  Color blueland2 = const Color(0xff3E6D77).withOpacity(0.7);
  return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Card(
          color: blueland2,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: blueland,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset("assets/$gambar"),
                      )
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    judul,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
        ),
      ));
}
