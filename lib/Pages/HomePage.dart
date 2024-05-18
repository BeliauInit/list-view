// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/Data.dart';

class HomePageCihuy extends StatefulWidget {
  const HomePageCihuy({super.key});

  @override
  State<HomePageCihuy> createState() => _HomePageCihuyState();
}


class _HomePageCihuyState extends State<HomePageCihuy> {

final List<ListMovie> listview =[
  ListMovie(
      name: 'Avatar the Last Airbender',
      date: '2024',
      img: 'assets/images/Avatar.jpg',
      desc: 'Ini adalah film avatar live action'),
  ListMovie(
      name: 'Dune | Part 2',
      date: '2024',
      img: 'assets/images/Dune.jpg',
      desc: 'Ini adalah film gurun pasir'),
  ListMovie(
      name: 'Ghostbusters The Frozen Empire',
      date: '2024',
      img: 'assets/images/Ghostbusters.jpg',
      desc: 'Ini adalah film action dan horror'),
  ListMovie(
      name: 'Godzilla x Kong The new Empire',
      date: '2024',
      img: 'assets/images/GK.jpg',
      desc: 'Ini adalah film sangat epic'),
  ListMovie(
      name: 'Kung Fu Panda 4',
      date: '2024',
      img: 'assets/images/Panda4.jpg',
      desc: 'Ini adalah film pendekar'),
];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text("Cihuy"),
        backgroundColor: CupertinoColors.destructiveRed,
      ),
      body: ListView.builder(padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemCount: listview.length,
        itemBuilder: (context, index) {
          final item = listview[index];
          return Card(
            color: Colors.white,
            shadowColor: Colors.white,
            child: InkWell(
              onTap: () {
                //
              },
              child: Container(
                width: 100.0,
                height: 280,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 180,
                          height: 200,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(item.img,
                          fit: BoxFit.cover,)
                        ),
                        SizedBox(width: 12),
                      ]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
