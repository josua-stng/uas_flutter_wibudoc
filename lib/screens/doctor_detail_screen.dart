import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/screens/booking_screen.dart';
import 'package:flutter_application_1/screens/doctor_detail_screen.dart';
import 'package:flutter_application_1/searchwidget/dokter_data.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/searchwidget/dokter_ex.dart';
import 'package:flutter_application_1/searchwidget/search_widget.dart';
import 'package:flutter/material.dart';

class detaildokterScreen extends StatefulWidget {
  @override
  detaildokterScreenState createState() => detaildokterScreenState();
}

class detaildokterScreenState extends State<detaildokterScreen> {
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
                    'images/smiling-sania.webp',
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
            'Sania Solehian',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Kecantikan',
            style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 17,
                color: CupertinoColors.systemGrey),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, left: 40, right: 40),
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Icon(
                          Icons.people_alt_outlined,
                          color: Colors.blueAccent,
                          size: 25,
                        ))),
                Text(
                  '1000+',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                Text(
                  'Patient',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, left: 40, right: 40),
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Icon(
                          Icons.tab_outlined,
                          color: Colors.pinkAccent,
                          size: 25,
                        ))),
                Text(
                  '8 Years',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                Text(
                  'Experience',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, left: 40, right: 40),
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Icon(
                          Icons.star_outline_outlined,
                          color: Colors.orangeAccent,
                          size: 25,
                        ))),
                Text(
                  '1000+',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                Text(
                  'Patient',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey),
                )
              ],
            ),
          ],
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
                  margin: EdgeInsets.only(top: 50, left: 20),
                  child: Text(
                    'About Doctor',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Colors.black87),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 5, left: 20),
                  child: Text(
                    'Dr. Bellamy Nicholas is a top specialist at London Bridge Hospital at London. He has achieved several awards and recognition for is contribution and service in his own field. He is available for private consultation. ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black54),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 30, left: 20),
                  child: Text(
                    'Working Time',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Colors.black87),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 5, left: 20, bottom: 20),
                  child: Text(
                    'Mon - Sat (08:30 AM - 09:00 PM)',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black54),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(40)),
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
                                builder: (context) => bookingScreen(),
                              ));
                        },
                        child: const Text('Book'),
                      )),
                )
              ],
            ),
          ),
        )
      ]));
}
