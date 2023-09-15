import 'package:flutter/material.dart';


class InputMedis extends StatefulWidget {
  const InputMedis({super.key});

  @override
  State<InputMedis> createState() => _InputMedisState();
}

class _InputMedisState extends State<InputMedis> {
  Color greenland = const Color(0xff0E5F00);
  Color buttonColor = const Color(0xff18A900);
  TextEditingController pjController = TextEditingController();
  TextEditingController diagnosaController = TextEditingController();
  TextEditingController tindakanController = TextEditingController();
  TextEditingController obatController = TextEditingController();
  TextEditingController alergiController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Input Rekam Medis"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: [
            _itemText(pjController, "Penanggung Jawab"),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: _itemTextArea(diagnosaController, "Diagnosa")),
                SizedBox(
                  width: 16,
                ),
                Flexible(
                    flex: 1, child: _itemTextArea(alergiController, "Alergi")),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: _itemTextArea(tindakanController, "Tindakan"),
                ),
                SizedBox(
                  width: 16,
                ),
                Flexible(flex: 1, child: _itemTextArea(obatController, "Obat")),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Upload"),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(buttonColor)),
              ),
            )
          ],
        ),
      )),
    );
  }
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
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: TextFormField(
            maxLines: 1,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
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
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            controller: formController,
          ),
        ),
      ),
    ],
  );
}
