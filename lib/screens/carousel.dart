import 'package:flutter_application_1/screens/doctor_detail_screen.dart';
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
final List<String> obat = [''];

class carouselslid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<carouselslid> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'images/logo.png',
          width: 150,
        ),
      ),
      body: Column(children: [
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
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        
      ]),
    );
  }
}
