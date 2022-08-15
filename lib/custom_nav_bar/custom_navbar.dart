import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
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

  int _selectedIndex = 0;

  List paggeList=[
    HomePage(),
    DoctorPage(),
    AppointmentDate(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFE5EDF9),
              width: 2,
            )
          )
        ),
        child: paggeList[_selectedIndex],
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_outlined,size: 30,),
              label: 'List'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range_outlined,size: 30,),
              label: 'Date'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined,size: 30,),
              label: 'Setting'
          ),
        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepOrange,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        currentIndex: selected,
        onTap: (index){
          setState(() {
            selected = index;
          });
        },
      ),*/
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        customBottomBarItems: [
          CustomBottomBarItems(
            label: '',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: '',
            icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
              label: '', icon: Icons.calendar_today_outlined,
          ),
          CustomBottomBarItems(
            label: '',
            icon: Icons.settings_outlined,
          ),
        ],
        selectedColor: Color(0xFFFD8311),
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        selectedIconSize: 30,
        unselectedIconSize: 30,
        indicatorType: IndicatorType.Top,
      ),
    );
  }
}
