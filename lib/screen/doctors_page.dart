import 'package:doctor_appointment/madel_calss/doctor.dart';
import 'package:doctor_appointment/screen/apointdate.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  _DoctorsPageState createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Color(0xFF07919d),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            color: Colors.white,
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(Icons.arrow_back_ios)),
                        Text(
                          "DOCTORS",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.info_outline),
                          color: Colors.white,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 58,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(36)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: TextField(
                            controller: _textEditingController,
                            decoration:
                                InputDecoration(hintText: "Search", icon: Icon(Icons.search), border: InputBorder.none),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: ListView.builder(
                itemCount: doctorItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Doctor nearby".toUpperCase()),
                              Text(
                                "See all".toUpperCase(),
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundImage: NetworkImage(doctorItems[index].profileImg ?? ""),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    doctorItems[index].name ?? "Dreamwalker",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      doctorItems[index].subtitle ?? "Dreamwalker",
                                      style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      // CircleAvatar(
                                      //   radius: 10,
                                      // ),
                                      Icon(
                                        Icons.medical_services_outlined,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        "${doctorItems[index].year} years",
                                        style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      // CircleAvatar(
                                      //   radius: 10,
                                      // ),
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
                                        width: 4,
                                      ),
                                      Text(
                                        "${doctorItems[index].like} %",
                                        style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total fee"),
                                  Text(
                                    "\$${doctorItems[index].price}",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(24)),
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => AppointmentDate()));
                                    },
                                    child: Text(
                                      "Make an appointment",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
