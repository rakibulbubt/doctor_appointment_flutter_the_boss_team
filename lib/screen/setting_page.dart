import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('All Reserved by', style: GoogleFonts.pacifico(fontSize: 30, letterSpacing: 3, color: Colors.teal),),
              SizedBox(height: 10,),
              Text('Md Rakibul Hasan', style: GoogleFonts.lobster(fontSize: 25, color: Colors.blue),),

              Text('Md Mahfuzur Rahman Faruk', style: GoogleFonts.lobster(fontSize: 25,color: Colors.blue),),

              Text('Md Nayon Parvej', style: GoogleFonts.lobster(fontSize: 25,color: Colors.blue)),



            ],
          ),
        ),
      ),
    );
  }
}
