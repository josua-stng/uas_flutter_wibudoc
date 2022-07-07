import 'package:flutter_application_1/screens/doctor_detail_screen.dart';
import 'package:flutter_application_1/screens/market_detail.dart';
import 'package:flutter_application_1/screens/search_dokter.dart';
import 'package:flutter_application_1/searchwidget/dokter_data.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/searchwidget/dokter_ex.dart';
import 'package:flutter_application_1/screens/search_dokter.dart';
import 'package:flutter_application_1/searchwidget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'Obat Herbal',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
final List<String> imgList = [
  'https://img.freepik.com/free-photo/front-view-cinnamon-mint-alogn-with-fresh-tea-white-ingredients-spices-color_140725-24595.jpg',
  'https://img.freepik.com/free-photo/turmeric-isolated-white-background_62678-103.jpg',
  'https://img.freepik.com/free-photo/beautiful-still-life-with-herbal-medicine_23-2149291999.jpg',
  'https://img.freepik.com/free-photo/healthy-ingredients-spices-rustic-murble-background_141291-2161.jpg',
  'https://img.freepik.com/free-photo/beautiful-still-life-with-herbal-medicine_23-2149292039.jpg?t=st=1657097040~exp=1657097640~hmac=6744c58ac65175bbf16417eee3f615d15551abaf00dc15cfe79dd7e364af77d3'
];

class marketScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _marketScreenState();
  }
}

class _marketScreenState extends State<marketScreen> {
  late List<dokter> dokters;

  @override
  void initState() {
    super.initState();
    dokters = alldokters;
  }

  int _current = 0;
  final CarouselController _controller = CarouselController();

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
      body: Column(children: <Widget>[
        Container(
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 9.0,
                height: 9.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.blue)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: dokters.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 25,
                mainAxisExtent: 230),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => marketdetail()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 8,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: CircleAvatar(
                                  radius: 40,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'images/contoh.png',
                                      fit: BoxFit.cover,
                                      width: 250,
                                      height: 250,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Title(
                                            color: Colors.black,
                                            child: Text(
                                              'rempah-rempah',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Column(children: [
                                      Text(
                                        'tradisional',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 20,
                                            left: 5,
                                            right: 5),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Title(
                                              color: Colors.blue,
                                              child: Text(
                                                '12+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Colors.blueAccent),
                                              )),
                                        ),
                                      )
                                    ]),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
