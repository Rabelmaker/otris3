import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class InputXray extends StatefulWidget {
  const InputXray({super.key});

  @override
  State<InputXray> createState() => _InputXrayState();
}

class _InputXrayState extends State<InputXray> {
  Color greenland = const Color(0xff0E5F00);
  Color buttonColor = const Color(0xff18A900);

  @override
  Widget build(BuildContext context) {
    TextEditingController namaController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Input X-ray"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: [
            DottedBorder(
              color: Colors.grey,
              strokeWidth: 4,
              borderType: BorderType.RRect,
              dashPattern: [8, 8, 8, 8],
              radius: const Radius.circular(16),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                        width: 150,
                        child: Image.asset("assets/gallery.png")
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Choose Image",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                    ),
                    const Text(
                      "( Max 5 mb )",
                      style: TextStyle(
                          fontSize: 14
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            _itemText(namaController, "Image Name"),
            const SizedBox(
              height: 32,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(buttonColor)),
                onPressed: () {},
                child: const Text("Upload"),
              ),
            ),
          ],
        ),
      ),
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
