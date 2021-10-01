// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Container(
          child: Center(child: Text('Drawer')),
        ),
      ),
      appBar: AppBar(
        leadingWidth: _width / 8,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            // ignore: avoid_print
            print('Here');
            scaffoldKey.currentState!.openDrawer();
          },
          child: Icon(
            Icons.table_rows_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        width: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 0, 3),
              child: SizedBox(
                width: _width,
                child: Text(
                  'Hello User!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: _width,
                child: Text(
                  'Have a nice day',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: _width,
                child: Carousel(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: SizedBox(
                  width: _width,
                  child: Text(
                    'Process',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                height: _width / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.indigo[50]),
                width: _width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.file_copy_rounded,
                          color: Colors.pink,
                          size: 40,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Project Name',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '2 days ago',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Icon(Icons.more_vert_rounded)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height / 3.5,
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    child: Material(
                      child: SizedBox(
                        height: _width,
                        child: Center(
                          child: Text(
                            'Random Dialog Box',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ));
        },
        child: CarouselSlider(
            items: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  width: _width,
                  height: _height,
                  child: Center(
                    child: Text('Demo Carousel 1'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: _height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  width: _width,
                  child: Center(child: Text('Demo Carousel 2')),
                ),
              ),
            ],
            options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7)),
      ),
    );
  }
}
