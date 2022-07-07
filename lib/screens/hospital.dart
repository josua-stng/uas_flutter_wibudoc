import 'package:flutter/material.dart';

class seeHospitalScreen extends StatefulWidget {
  seeHospitalScreen({Key? key}) : super(key: key);

  @override
  State<seeHospitalScreen> createState() => _seeHospitalScreenState();
}

class _seeHospitalScreenState extends State<seeHospitalScreen> {
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
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                const Text('Hospital',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blue)),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/hospitalAdamMalik.png?alt=media&token=0f7da6c3-1803-4312-a6eb-7ca00c933a3d'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Adam Malik',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Medan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '2 Mei 1992',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),  
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/hospitalMadani.png?alt=media&token=4ce1867f-bd60-48aa-947f-3273028b1037'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Madani Hospital',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Medan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '9 Mei 2008',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/hospitalBoloni.png?alt=media&token=978d00b3-ef16-4e0f-ab60-3ba47aae5eb3'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Boloni Hospital',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Medan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '24 April 2005',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/hospitalAdamMalik.png?alt=media&token=0f7da6c3-1803-4312-a6eb-7ca00c933a3d'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Adam Malik',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Medan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '2 Mei 1992',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            )));
  }
}
