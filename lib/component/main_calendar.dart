import 'package:calentime/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart'; // table_calendar 플러그인

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected; // 날짜 선택 시 실행할 함수
  final DateTime selectedDate; // 선택된 날짜

  const MainCalendar({
    super.key,
    required this.onDaySelected,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      onDaySelected: onDaySelected, // 날짜 선택 시 실행할 함수
      selectedDayPredicate: (date) =>
          date.year == selectedDate.year &&
          date.month == selectedDate.month &&
          date.day == selectedDate.day,

      locale: 'ko_KR', // 달력 언어 설정
      firstDay: DateTime(1800, 1, 1), //첫째 날
      lastDay: DateTime(3000, 1, 1), // 마지막날
      focusedDay: DateTime.now(), // 달력이 화면에 보여주는 날짜

      // UI 디자인
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
      calendarStyle: CalendarStyle(
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(37.0),
          border: Border.all(
            color: PRIMARY_color,
            width: 1.7,
          ),
        ),
        defaultTextStyle: TextStyle(
          // 기본 글씨체
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        weekendTextStyle: TextStyle(
          // 주말 글씨체
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        selectedTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: PRIMARY_color,
        ),
      ),
    );
  }
}
