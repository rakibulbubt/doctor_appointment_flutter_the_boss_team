import 'package:doctor_appointment/custom_nav_bar/custom_navbar.dart';
import 'package:doctor_appointment/screen/apointdate.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/madel_calss/doc_list_model.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class DoctorPage extends StatelessWidget {
  DoctorPage({Key? key}) : super(key: key);

  final List docList = nearby.getnearby();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
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
                                    color: Color(0xFFD4F0F1),
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'RobotoSlab',
                                    letterSpacing: 2,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.info_outline,
                            size: 30,
                            color: Color(0xFFD4F0F1),
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
                        padding: EdgeInsets.only(left: 20),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
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

                Column(
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
                                style: TextStyle(
                                  color: Color(0xFF4D577C),
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'RobotoSlab',
                                  letterSpacing: 2,
                                  fontSize: 16,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "SEE ALL",
                                  style: TextStyle(
                                    color: Color(0xFFFD922E),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'RobotoSlab',
                                    fontSize: 16,
                                    letterSpacing: 2
                                  ),
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
                                    style: TextStyle(
                                      color: Color(0xFF4D577C),
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'RobotoSlab',
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "General Practitioner",
                                    style: TextStyle(
                                      color: Color(0xFFA1ACD2),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'RobotoSlab',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              //padding: EdgeInsets.all(4),
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Icon(
                                                Icons.medical_services_outlined,
                                                size: 20,
                                                color: Colors.blue,
                                              )),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "3 Years",
                                            style: TextStyle(
                                              color: Color(0xFFA1ACD2),
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'RobotoSlab',
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              padding: EdgeInsets.all(2),
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.red
                                                      .withOpacity(0.2)),
                                              child: Icon(
                                                EvaIcons.heart,
                                                size: 20,
                                                color: Colors.red,
                                              )),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "92%",
                                            style: TextStyle(
                                              color: Color(0xFFA1ACD2),
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'RobotoSlab',
                                            ),
                                          )
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
                                      color: Color(0xFFA1ACD2),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'RobotoSlab',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$80",
                                    style: TextStyle(
                                      color: Color(0xFF4D577C),
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'RobotoSlab',
                                      fontSize: 26,
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
                                  height: 60,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFE8312),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      "Make an appontment",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffffe8c3),
                                        fontWeight: FontWeight.bold,
                                        wordSpacing: 2,
                                        fontFamily: 'RobotoSlab',
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        clipBehavior: Clip.hardEdge,
                        itemCount: docList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, int index) {
                          return Container(
                              child: Column(children: [
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      (index == 0)
                                          ? Text(
                                              "RECOMENDED DOCTORS",
                                              style: TextStyle(
                                                color: Color(0xFF4D577C),
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'RobotoSlab',
                                                letterSpacing: 2,
                                                fontSize: 16,
                                              ),
                                            )
                                          : SizedBox(
                                              height: 0,
                                            ),
                                      InkWell(
                                          onTap: () {},
                                          child: (index == 0)
                                              ? Text(
                                                  "SEE ALL",
                                                  style: TextStyle(
                                                      color: Color(0xFFFD922E),
                                                      fontWeight: FontWeight.bold,
                                                      fontFamily: 'RobotoSlab',
                                                      fontSize: 16,
                                                      letterSpacing: 2
                                                  ),
                                                )
                                              : SizedBox(
                                                  height: 0,
                                                ))
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
                                            "${docList[index].img}"),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${docList[index].name}",
                                            style: TextStyle(
                                              color: Color(0xFF4D577C),
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'RobotoSlab',
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "General Practitioner",
                                            style: TextStyle(
                                              color: Color(0xFFA1ACD2),
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'RobotoSlab',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                      //padding: EdgeInsets.all(4),
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                          color: Colors.blue
                                                              .withOpacity(0.2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15)),
                                                      child: Icon(
                                                        Icons
                                                            .medical_services_outlined,
                                                        size: 20,
                                                        color: Colors.blue,
                                                      )),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "3 Years",
                                                    style: TextStyle(
                                                      color: Color(0xFFA1ACD2),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'RobotoSlab',
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.all(2),
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          color: Colors.red
                                                              .withOpacity(
                                                                  0.2)),
                                                      child: Icon(
                                                        EvaIcons.heart,
                                                        size: 20,
                                                        color: Colors.red,
                                                      )),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "92%",
                                                    style: TextStyle(
                                                      color: Color(0xFFA1ACD2),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'RobotoSlab',
                                                    ),
                                                  )
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Total Fee",
                                            style: TextStyle(
                                              color: Color(0xFFA1ACD2),
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'RobotoSlab',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "\$80",
                                            style: TextStyle(
                                              color: Color(0xFF4D577C),
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'RobotoSlab',
                                              fontSize: 26,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AppointmentDate()));
                                        },
                                        child: Container(
                                          height: 60,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFE8312),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Center(
                                            child: Text(
                                              "Make an appontment",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xffffe8c3),
                                                fontWeight: FontWeight.bold,
                                                wordSpacing: 2,
                                                fontFamily: 'RobotoSlab',
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(300),
                                        color: Colors.grey.withOpacity(0.4)),
                                  )
                                ],
                              ),
                            ),
                          ]));
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
