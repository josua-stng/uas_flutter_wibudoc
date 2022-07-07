import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/booking_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/doctor_detail_screen.dart';
import 'package:flutter_application_1/screens/landing_page.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/carousel.dart';
import 'package:flutter_application_1/screens/market_screen.dart';
import 'package:flutter_application_1/screens/sdokter_screen.dart';
import 'package:flutter_application_1/screens/search_dokter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Filter & Search ListView';

// void main() {
//  runApp(MultiProvider(
//    providers: [
//      ChangeNotifierProvider(create: (_)=>mainProvider()),
//    ],
//    child: MyApp(),
//    ));

// }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.workSansTextTheme()),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
