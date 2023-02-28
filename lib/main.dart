import 'package:flutter/material.dart';

import 'screens/home/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.light().copyWith(primary: Color(0xFFff0000),)),
    title: "Projeto",
    home: Home(),
    ));
}
