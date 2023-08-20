// import 'package:calentime/component/main_calendar.dart';
import 'package:flutter/material.dart';
import '../component/main_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // 시스템 UI 피해서 구현
        child: Column(
          children: [
            MainCalendar(
              selectedDate: selectedDate, // 선택된 날짜 전달
              onDaySelected: onDaySelected,
            ),
          ],
        ),
      ),
    );
  }

  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}
