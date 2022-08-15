import 'package:doctor_appointment/weidget/h_w_custom_calender.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              //height: MediaQuery.of(context).size.height*0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF07919D),
              ),
              child: Column(
                children: [

                  // 1 ROW TEXT AND CIRCULAR IMAGE FROM HERE
                  Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('👋 Hello,',style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFA4D5D9),
                              fontFamily: 'RobotoSlab',
                            ),),
                            SizedBox(height: 5,),
                            Text('George Floyed',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFBFDFD),
                              fontFamily: 'RobotoSlab',
                            ),),
                          ],
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'
                          ),
                          backgroundColor: Colors.transparent,
                          radius: 35,
                        ),
                      ],
                    ),
                  ),
                  // 1 ROW TEXT AND CIRCULAR IMAGE END HERE


                  // SEARCHBOX CONTAINER FROM HERE
                  Padding(
                    padding: const EdgeInsets.only(top: 13,bottom: 20),
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
                          prefixIcon: Icon(Icons.search,size: 35,color: Colors.grey,),
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
          ],
        ),
      ),
    );
  }
}
