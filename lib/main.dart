import 'package:flutter/material.dart';
import 'package:otris2/screens/dashboard.dart';
import 'package:otris2/screens/input_medis.dart';
import 'package:otris2/screens/list_room.dart';
import 'package:otris2/screens/login.dart';
import 'package:otris2/screens/setting_lampu.dart';
import 'package:otris2/screens/setting_meja.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Otris App',
      home: InputMedis(),
    );
  }
}
