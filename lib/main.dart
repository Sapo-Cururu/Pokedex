import 'package:flutter/material.dart';

import 'screens/home/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true,
      colorSchemeSeed: const Color(0xFFE3350D),
    ),
    title: "Projeto",
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
