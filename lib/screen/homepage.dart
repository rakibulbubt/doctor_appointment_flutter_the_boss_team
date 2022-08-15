import 'package:doctor_appointment/madel_calss/model.dart';
import 'package:doctor_appointment/weidget/h_w_custom_calender.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List newsList = News.getNews();
  final List serviceList = Services.getServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              //height: MediaQuery.of(context).size.height*0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF07919D),
              ),
              child: Column(
                children: [
                  // 1 ROW TEXT AND CIRCULAR IMAGE FROM HERE
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '👋 Hello,',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFA4D5D9),
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'George Floyed',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFBFDFD),
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                          backgroundColor: Colors.transparent,
                          radius: 35,
                        ),
                      ],
                    ),
                  ),
                  // 1 ROW TEXT AND CIRCULAR IMAGE END HERE

                  // SEARCHBOX CONTAINER FROM HERE
                  Padding(
                    padding: const EdgeInsets.only(top: 13, bottom: 5),
                    child: Container(
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
                  ),
                  // SEARCHBOX CONTAINER END HERE

                  //CALENDER START FROM HERE
                  CousomCalender(),
                  //CALENDER END HERE
                ],
              ),
            ),

            //SERVICE AND SEE ALL ROW AND LISTVIEW FROM HERE
            Expanded(
              child: Container(
                color: Color(0xFFF1F7FF),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      //SERVICE BUTTON AND SEE ALL BUTTON AND ICOND LISTVIEW CONTAINER
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        color: Colors.white,
                        height: 220,
                        child: Column(
                          children: [
                            //SERVICE BUTTON AND SEE ALL BUTTON
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  child: Text(
                                    'SERVICES',
                                    style: TextStyle(
                                      color: Color(0xFF4D577C),
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'RobotoSlab',
                                      letterSpacing: 2,
                                      fontSize: 15,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                TextButton(
                                  child: Text(
                                    'SEE ALL',
                                    style: TextStyle(
                                      color: Color(0xFFFD922E),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'RobotoSlab',
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            //LISTVIEW CONTAINER WITH ICON AND TEXT
                            Container(
                              height: 140,
                              child: ListView.separated(
                                shrinkWrap: true,
                                itemCount: serviceList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 85,
                                        width: 85,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Color(0xFF07919D),
                                          border: Border.all(
                                              color: Color(0xFFD7EDEF),
                                              width: 15),
                                        ),
                                        child: serviceList[index].icon,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        '${serviceList[index].name}',
                                        style: TextStyle(
                                          color: Color(0xFF4D577C),
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'RobotoSlab',
                                          letterSpacing: 2,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 20,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      //DAILY UPDATE AND TOW DOT OPTION
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //DAILY UPDATE CATEGORY
                            TextButton(
                              child: Text(
                                'DAILY UPDATE',
                                style: TextStyle(
                                  color: Color(0xFF4D577C),
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'RobotoSlab',
                                  letterSpacing: 2,
                                  fontSize: 15,
                                ),
                              ),
                              onPressed: () {},
                            ),

                            //TOW DOT OPTION CLICK
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 6,
                                    width: 6,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF4D577C),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 6,
                                    width: 6,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF4D577C),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        color: Colors.white,
                        height: 350,
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: newsList.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 120,
                              // color: Colors.blueAccent,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(newsList[index].title,
                                            style: TextStyle(
                                              color: Color(0xFF4D577C),
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'RobotoSlab',
                                              letterSpacing: 2,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Text(newsList[index].date,
                                                style:TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF919BB5),
                                              ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(newsList[index].time,
                                                style:TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF919BB5),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Image(
                                            image: NetworkImage(
                                                newsList[index].img),
                                            height: 80,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 10,);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //SERVICE AND SEE ALL ROW AND LISTVIEW END HERE
          ],
        ),
      ),
    );
  }
}
