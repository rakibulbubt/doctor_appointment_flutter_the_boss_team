import 'package:flutter/material.dart';

class nearby {
  String? img;
  String? name;

  nearby({this.img, this.name});

  static List<nearby> getnearby() {
    return [
      nearby(
          img:
              "https://t4.ftcdn.net/jpg/03/20/52/31/240_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.jpg",
          name: "Wade Warren"),
      nearby(
          img:
              "https://t3.ftcdn.net/jpg/01/30/45/54/240_F_130455409_fTuinPO1LXECv5hlk9VBREnL6yowYUo3.jpg",
          name: "Lady Thanos"),
      nearby(
          img:
              "https://t4.ftcdn.net/jpg/02/96/75/21/240_F_296752181_hHIEIEMQ3pIHwXCrsFTFwmcE1mfE7EIf.jpg",
          name: "Jesmine Ara"),
      nearby(
          img:
              "https://t4.ftcdn.net/jpg/02/94/48/47/240_F_294484736_qViNBXEXsRoxcXld6mlCLpT0k5MZRpX8.jpg",
          name: "David Ginola"),
      nearby(
          img:
              "https://t3.ftcdn.net/jpg/02/97/95/66/240_F_297956690_OMymV1MsaWkAPYOeVVLsR6B5QD1jnp62.jpg",
          name: "Cantona"),
      nearby(
          img:
              "https://t4.ftcdn.net/jpg/02/11/76/05/240_F_211760584_jB07dXXwuUtfvxRokPAZ7BGjdI2QD1cm.jpg",
          name: "White Teeth"),
      nearby(
          img:
              "https://t4.ftcdn.net/jpg/02/83/30/21/240_F_283302178_RtebxAc5PmvVfeoIdeyPhklUz1KmZv3q.jpg",
          name: "Dr. White"),
    ];
  }
}
