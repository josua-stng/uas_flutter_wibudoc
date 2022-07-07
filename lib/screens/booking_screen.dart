import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class bookingScreen extends StatefulWidget {
  bookingScreen({Key? key}) : super(key: key);

  @override
  State<bookingScreen> createState() => _bookingScState();
}

class _bookingScState extends State<bookingScreen> {
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
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(193, 129, 237, 245),
                child: new IconButton(
                    icon: new Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    onPressed: null),
              ),
              Divider(),
              Text(
                'Thanks For Booking!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Divider(),
              Text(
                'You booked already done',
                style: TextStyle(fontSize: 15),
              ),
              Divider(),
              Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/Group%20306.png?alt=media&token=74160e97-0cda-4f7f-80e5-a3fbc76b71f6'),
              Divider(),
              SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homeScreen(),
                          ));
                    },
                    child: Text('Back Home')),
              )
            ],
          ),
        ));
  }
}
