import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/screens/booking_screen.dart';
import 'package:flutter_application_1/screens/doctor_detail_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/searchwidget/dokter_data.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/searchwidget/dokter_ex.dart';
import 'package:flutter_application_1/searchwidget/search_widget.dart';
import 'package:flutter/material.dart';

class marketdetail extends StatefulWidget {
  @override
  marketdetailState createState() => marketdetailState();
}

class marketdetailState extends State<marketdetail> {
  late List<dokter> dokters;

  String query = '';

  @override
  void initState() {
    super.initState();
    dokters = alldokters;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/mbak%20mbak.png?alt=media&token=8ab09efc-ac0a-435e-b663-1edad6eecba5')),
          ),
        ],
        title: Image.asset(
          'images/logo.png',
          width: 150,
        ),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: CircleAvatar(
                radius: 90,
                child: ClipOval(
                  child: Image.asset(
                    'images/contoh.png',
                    fit: BoxFit.cover,
                    width: 250,
                    height: 250,
                  ),
                )),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Rempah-Rempah',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Jamu | Saraf | Meriang',
            style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 17,
                color: CupertinoColors.systemGrey),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                      top: 20, right: 20, left: 20, bottom: max(0, 200)),
                  child: Text(
                    'Rempah-Rempah adalah obat yang Banyak dijual di toko manapun bahkan toko kelontong sekalipun. Cocok untuk anak usia 12 tahun dan orang dewasa. Aturan pakainya diminum 1 hari 3 kali sesuai dosis makan pada hari tersebut. Obat ini mengandung bahan-bahan yang diduga ampuh menyembuhkan flu dan gejalanya.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black54,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      width: 350,
                      height: 40,
                      child: new ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          print('See Doctors');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => homeScreen(),
                              ));
                        },
                        child: const Text('Home'),
                      )),
                )
              ],
            ),
          ),
        )
      ]));
}
