import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/booking_screen.dart';

import 'package:flutter_application_1/screens/hospital.dart';
import 'package:flutter_application_1/screens/market_screen.dart';
import 'package:flutter_application_1/screens/sdokter_screen.dart';

import 'package:flutter_application_1/screens/search_dokter.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  
                  onPressed: () {
                    print('See Doctors');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => dokterr(),
                        ));
                  },
                  style: ButtonStyle(),
                  child: Text('See Doctors',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Market');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => marketScreen(),
                        ));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text('Market',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => seeHospitalScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text(
                    'See Hospital',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'images/Group294.png',
                      width: 350,
                    ),
                    Image.asset('images/Group294.png', width: 350),
                    Image.asset('images/Group294.png', width: 350),
                    Image.asset('images/Group294.png', width: 350)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
