import 'package:calentime/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart'; // 달력 언어

void main() async {
  await initializeDateFormatting();
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}