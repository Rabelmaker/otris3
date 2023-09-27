import 'package:flutter/material.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    Color greenland = const Color(0xff0E5F00);
    TextEditingController pjController = TextEditingController();
    TextEditingController diagnosaController = TextEditingController();
    TextEditingController tindakanController = TextEditingController();
    TextEditingController obatController = TextEditingController();
    TextEditingController alergiController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Profile"),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.green,
                    )),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                    flex: 4,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 24),
                                child: ListView(
                                  children: [
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    _itemTextArea(pjController,
                                        "Alamat"),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                            flex: 1,
                                            child: _itemText(pjController,
                                                "Departemen"),),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Flexible(
                                            flex: 1,
                                            child:_itemText(pjController,
                                                "Job Title"),),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    ElevatedButton(
                                        style: const ButtonStyle(
                                            backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xffED4343))),
                                        onPressed: () {},
                                        child: const Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.logout_rounded),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text("Log Out")
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  const SizedBox(
                    width: 120,
                  ),
                  Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 10),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 3),
                              blurRadius: 10,
                              spreadRadius: 2, //
                            ),
                          ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset("assets/img.png"))),
                  const SizedBox(
                    width: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Akbar Maulana",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      _itemPasien(greenland, Icons.email,
                          "akbar.maulana26061999@gmail.com"),
                      const SizedBox(
                        height: 6,
                      ),
                      _itemPasien(greenland, Icons.call, "+6285321888053"),
                      const SizedBox(
                        height: 6,
                      ),
                      _itemPasien(greenland, Icons.calendar_month,
                          "Pekanbaru, 26 Juni 1999"),
                      const SizedBox(
                        height: 6,
                      ),
                      _itemPasien(greenland, Icons.accessibility_new_rounded,
                          "24 tahun")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _itemPasien(Color warna, IconData ikon, String value) {
  return Row(
    children: [
      Icon(
        ikon,
        color: warna,
      ),
      const SizedBox(
        width: 16,
      ),
      Text(
        value,
        style: const TextStyle(
            color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 16),
      ),
    ],
  );
}

Widget _itemText(TextEditingController formController, String judul) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        judul,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 16),
          child: TextFormField(
            readOnly: true,
            maxLines: 1,
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: "value"),
            controller: formController,
          ),
        ),
      ),
    ],
  );
}

Widget _itemTextArea(TextEditingController formController, String judul) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        judul,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 16),
          child: TextFormField(
            readOnly: true,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(
              labelText: "tubuh sehat adalah jiwa yang kuat",
              border: InputBorder.none,
            ),
            controller: formController,
          ),
        ),
      ),
    ],
  );
}
