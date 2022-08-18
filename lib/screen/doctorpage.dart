import 'package:doctor_appointment/custom_nav_bar/custom_navbar.dart';
import 'package:doctor_appointment/screen/homepage.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              //Doctors Start
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF07919D),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CustomNavbar()));
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "DOCTORS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Doctors end

                    //Search Bar start
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 15),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 35,
                            color: Colors.grey,
                          ),
                          hintText: 'Serach',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'RobotoSlab',
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        cursorColor: Colors.grey.shade800,
                        cursorHeight: 25,
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],

                  //Search Bar end
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
