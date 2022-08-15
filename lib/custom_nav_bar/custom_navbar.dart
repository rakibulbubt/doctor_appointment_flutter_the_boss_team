import 'package:doctor_appointment/screen/apointdate.dart';
import 'package:doctor_appointment/screen/doctorpage.dart';
import 'package:doctor_appointment/screen/homepage.dart';
import 'package:doctor_appointment/screen/setting_page.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({Key? key}) : super(key: key);

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {

  int selected = 0;

  List paggeList=[
    HomePage(),
    DoctorPage(),
    AppointmentDate(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: paggeList[selected],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
              label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 30,),
              label: 'Home'
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepOrange,
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        currentIndex: selected,
        onTap: (index){
          setState(() {
            selected = index;
          });
        },
      ),
    );
  }
}
