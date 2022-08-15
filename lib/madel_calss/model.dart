import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News {
  String? title;
  String? img;
  String? date;
  String? time;

  News({this.img, this.title, this.date, this.time});

  static List<News> getNews() {
    return [
      News(
          title: 'Symptom\'s of covid-19',
          time: '08:20 AM',
          date: 'August 10',
          img: 'http://www.riversideonline.com/-/media/patients-and-visitors/healthy-you/symptoms.ashx',
      ),
      News(
          title: 'Bangladesh has protect their foreign people',
          time: '07:40 PM',
          date: 'August 09',
          img: 'http://www.riversideonline.com/-/media/patients-and-visitors/healthy-you/symptoms.ashx',
      ),

          News(
          title: '10000 people affected today',
          time: '05:20 PM',
          date: 'August 13',
            img: 'http://www.riversideonline.com/-/media/patients-and-visitors/healthy-you/symptoms.ashx',
          ),
      News(
          title: 'Please ware mask everyone',
          time: '03:20 AM',
          date: 'August 12',
        img: 'http://www.riversideonline.com/-/media/patients-and-visitors/healthy-you/symptoms.ashx',
      ),
      News(
          title: 'Don\'t go out in this situation',
          time: '02:20 PM',
          date: 'August 14',
        img: 'http://www.riversideonline.com/-/media/patients-and-visitors/healthy-you/symptoms.ashx',
      ),
    ];
  }
}

class Services {
  String? name;
  Icon? icon;
  Services({this.name, this.icon});

  static List<Services> getServices() {
    return [
      Services(
        name: 'Covid-19',
        icon: Icon(Icons.coronavirus, color: Colors.white, size: 30),
      ),
      Services(
        name: 'Doctors',
        icon: Icon(Icons.person, color: Colors.white, size: 30),
      ),
      Services(
        name: 'Hospital',
        icon: Icon(Icons.other_houses, color: Colors.white, size: 30),
      ),
      Services(
        name: 'Medicine',
        icon: Icon(Icons.auto_fix_normal, color: Colors.white, size: 30),
      ),
      Services(
        name: 'Ambulance',
        icon: Icon(Icons.directions_car_filled, color: Colors.white, size: 30),
      ),
      Services(
        name: 'Mantel Care',
        icon: Icon(Icons.cabin, color: Colors.white, size: 30),
      ),
    ];
  }
}
