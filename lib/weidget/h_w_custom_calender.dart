import 'package:doctor_appointment/helper/custom_calender.dart';
import 'package:flutter/material.dart';
class CousomCalender extends StatefulWidget {
  const CousomCalender({Key? key}) : super(key: key);

  @override
  State<CousomCalender> createState() => _CousomCalenderState();
}

class _CousomCalenderState extends State<CousomCalender> {

  DateTime _selectedDay = DateTime.now();

  List<String> dayinweek =[
    "Mo", "Tu", "We", "Th", "Fr", "Sa","Su"
  ];

  @override
  Widget build(BuildContext context){
    return WeeklyDatePickerr(
      selectedDay: _selectedDay,
      changeDay: (value){
        setState(() {
          _selectedDay = value;
        });
      },
      enableWeeknumberText: false,
      backgroundColor: Color(0xFF07919D),
      weekdayTextColor: Color(0xFFBDE2E5),
      digitsColor: Colors.white,
      selectedBackgroundColor: Colors.white,
      weekdays: dayinweek,
      daysInWeek: 7,
      selectedDigitColor: Color(0xFF07919D),
    );
  }
}
