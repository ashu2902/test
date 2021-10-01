import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/home_screen.dart';
import 'Screens/screen_1.dart';
import 'Screens/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _page = 0;
  final screens = [HomeScreen(), Screen1(), Screen2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            currentIndex: _page,
            type: BottomNavigationBarType.shifting,
            onTap: (int) {
              setState(() {
                _page = int;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_time_filled_sharp), label: 'Screen1'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp), label: 'Screen2')
            ]),
        body: screens[_page]);
  }
}
