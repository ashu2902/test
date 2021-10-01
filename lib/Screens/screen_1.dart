import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          leadingWidth: _width / 8,
          elevation: 0,
          leading: GestureDetector(
            child: Icon(
              Icons.chevron_left_sharp,
              color: Colors.black,
              size: 30,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 3),
                        child: SizedBox(
                          width: _width / 2,
                          child: const Text(
                            'September 2020',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.pink[50],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.file_copy_rounded,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.blue),
                    width: _width,
                    height: _width / 3,
                    child: const Center(
                      child: Text('Demo Carousel 1'),
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 3),
                        child: SizedBox(
                          width: _width / 2,
                          child: const Text(
                            'Tasks',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.more_horiz_sharp,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: _width,
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue),
                              width: _width,
                              height: _width / 3,
                              child: const Center(
                                child: Text('Demo Carousel 1'),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
