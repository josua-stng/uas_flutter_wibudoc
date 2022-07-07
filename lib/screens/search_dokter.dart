import 'package:flutter_application_1/screens/doctor_detail_screen.dart';
import 'package:flutter_application_1/searchwidget/dokter_data.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/searchwidget/dokter_ex.dart';
import 'package:flutter_application_1/searchwidget/search_widget.dart';
import 'package:flutter/material.dart';

class sdokter extends StatefulWidget {
  @override
  sdokterState createState() => sdokterState();
}

class sdokterState extends State<sdokter> {
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
        body: Column(
          children: <Widget>[
            const Text('Search More Doctor'),
            buildSearch(),
            Expanded(
              child: GridView.builder(
                itemCount: dokters.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 25,
                    mainAxisExtent: 230),
                itemBuilder: (context, index) {
                  final dokter = dokters[index];

                  return builddokter(dokter);
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Search Doctor',
        onChanged: searchdokter,
      );

  Widget builddokter(dokter dokter) => GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            
            MaterialPageRoute(
                builder: (context) => detaildokterScreen(
                     
                    )));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image.network(
                    dokter.pic,
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
                            dokter.name,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(children: [
                    Text(
                      dokter.spesialis,
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_half,
                            size: 15,
                            color: Colors.orangeAccent,
                          ),
                          Title(
                              color: Colors.black,
                              child: Text(
                                '4.3 (150 reviews)',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 11),
                              )),
                        ],
                      ),
                    )
                  ]),
                )
              ],
            )
          ],
        ),
      ));

  void searchdokter(String query) {
    final dokters = alldokters.where((dokter) {
      final titleLower = dokter.name.toLowerCase();
      final authorLower = dokter.spesialis.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.dokters = dokters;
    });
  }
}
