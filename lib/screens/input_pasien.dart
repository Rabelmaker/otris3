import 'package:flutter/material.dart';


class InputPasien extends StatefulWidget {
  const InputPasien({super.key});

  @override
  State<InputPasien> createState() => _InputPasienState();
}

class _InputPasienState extends State<InputPasien> {
  Color greenland = const Color(0xff0E5F00);
  Color buttonColor = const Color(0xff18A900);
  TextEditingController namaController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController tempatController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();
  TextEditingController umurController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController bpjsController = TextEditingController();
  TextEditingController hpController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Input Patient Information"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: [
            _itemText(namaController, "Name", TextInputType.name),
            const SizedBox(
              height: 16,
            ),
            _itemTextArea(alamatController, "Addres"),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Flexible(
                    flex: 3,
                    child: _itemText(tempatController, "Born Place",
                        TextInputType.streetAddress)),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                    flex: 2,
                    child: _itemText(
                        tanggalController, "Date", TextInputType.datetime)),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                    flex: 1,
                    child: _itemText(
                        umurController, "Age", TextInputType.number)),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: _itemText(nikController, "NIK", TextInputType.number),
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                    flex: 1,
                    child: _itemText(
                        bpjsController, "BPJS", TextInputType.number)),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: _itemText(hpController, "Mobile Phone Number", TextInputType.phone),
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                    flex: 1,
                    child: _itemText(
                        emailController, "Email", TextInputType.emailAddress)),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Upload"),
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

Widget _itemText(TextEditingController formController, String judul,
    TextInputType keyboardType) {
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
            keyboardType: keyboardType,
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
