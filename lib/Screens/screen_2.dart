import 'package:flutter/material.dart';
import 'package:task/main.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController oneController = TextEditingController();
  var one;
  TextEditingController twoController = TextEditingController();
  var two;
  TextEditingController Start_timeController = TextEditingController();
  var Start_time;
  TextEditingController End_timeController = TextEditingController();
  var End_time;
  TextEditingController DescriptionController = TextEditingController();
  var Description;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 3),
                        child: SizedBox(
                          width: _width / 2,
                          child: const Text(
                            'New Task',
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
                            Icons.account_circle_outlined,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: _width / 1.2,
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Title'),
                            TextField(
                              textAlign: TextAlign.center,
                              onEditingComplete: () {
                                one = oneController.text;
                              },
                              controller: oneController,
                              obscureText: false,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Date'),
                              TextField(
                                textAlign: TextAlign.center,
                                onEditingComplete: () {
                                  one = twoController.text;
                                },
                                controller: twoController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: _width / 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Start Time'),
                                    TextField(
                                      textAlign: TextAlign.center,
                                      onEditingComplete: () {
                                        one = Start_timeController.text;
                                      },
                                      controller: Start_timeController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: _width / 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('End Time'),
                                      TextField(
                                        textAlign: TextAlign.center,
                                        onEditingComplete: () {
                                          one = End_timeController.text;
                                        },
                                        controller: End_timeController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Description'),
                              TextField(
                                textAlign: TextAlign.center,
                                onEditingComplete: () {
                                  one = DescriptionController.text;
                                },
                                controller: DescriptionController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: _width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Category'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CategoryBox(text: 'Marketing'),
                                    CategoryBox(text: 'Meeting'),
                                    CategoryBox(text: 'Dev')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CategoryBox(text: 'Mobile'),
                                    CategoryBox(text: 'UI Design'),
                                    CategoryBox(text: 'HTML')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  const CategoryBox({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
          height: _width / 6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.indigo[50]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(012.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
            ),
          )),
    );
  }
}
