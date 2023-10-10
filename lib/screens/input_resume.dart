import 'package:flutter/material.dart';


class InputResume extends StatefulWidget {
  const InputResume({super.key});

  @override
  State<InputResume> createState() => _InputResumeState();
}

class _InputResumeState extends State<InputResume> {
  Color greenland = const Color(0xff0E5F00);
  Color buttonColor = const Color(0xff18A900);
  TextEditingController resumeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenland,
        title: const Text("Input Resume"),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ListView(
              children: [
                _itemTextArea(resumeController, "Resume"),
                SizedBox(
                  height: 16,
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
        height: 300,
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
