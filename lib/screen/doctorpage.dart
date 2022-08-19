import 'package:doctor_appointment/custom_nav_bar/custom_navbar.dart';
import 'package:doctor_appointment/screen/apointdate.dart';
import 'package:doctor_appointment/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/madel_calss/doc_list_model.dart';

class DoctorPage extends StatelessWidget {
  DoctorPage({Key? key}) : super(key: key);

  final List docList = nearby.getnearby();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey.withOpacity(0.2),
          child: Column(
            children: [
              //Doctors Start
              Container(
                margin: EdgeInsets.only(bottom: 10),
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
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "DOCTOR NEARBY",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "SEE ALL",
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    "https://t3.ftcdn.net/jpg/03/05/41/28/240_F_305412877_XAWJjbhjIU36pa3JQAjStTiKsR2uXgwv.jpg"),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Darrell Steward",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "General Practitioner",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            radius: 10,
                                            backgroundImage: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShcAdxb-QFP2ojIzkNJ8AGLBaSdMPN12l0LKbtgBIOqOJ4KBb0N1P7fGtQ_j0saBS_DWk&usqp=CAU"),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("3 Years")
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            radius: 10,
                                            backgroundImage: NetworkImage(
                                                "https://www.rawshorts.com/freeicons/wp-content/uploads/2017/01/brown_webpict35_1484337169-1.png"),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("92%")
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Fee",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$80",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => AppointmentDate()));
                                },
                                child: Container(
                                  height: 50,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      "Make an appontment",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
