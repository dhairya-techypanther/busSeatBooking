import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shani_bus/pages/Seat%20Arrangement/busseats.dart';
import 'package:shani_bus/pages/Seat%20Arrangement/busseats2.dart';
import 'package:shani_bus/pages/designs.dart';

import 'Seat Arrangement/BusSeats3.dart';
import 'Seat Arrangement/busseats4.dart';

class busbook2 extends StatefulWidget {
  int a = 0;
  late String b;

  busbook2(int c, String d, {Key? key}) : super(key: key) {
    a = c;
    b = d;
  }

  @override
  _busbook2State createState() => _busbook2State(a, b);
}

class _busbook2State extends State<busbook2> {
  int a = 0;
  late String b;

  _busbook2State(int c, String d) {
    a = c;
    b = d;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              color: const Color.fromRGBO(255, 205, 5, 1),
              child: Stack(
                children: [
                  Positioned(
                    left: 15,
                    top: 24,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/images/Goback.png')),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('yellowBus',
                            style: design.texst(24, FontWeight.w700)),
                        Container(
                          height: 20,
                        ),
                        Text('Volvo $b ',
                            style: design.texst((18), FontWeight.w400))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 7,
            ),
            Text('Choose seats based on fares',
                style: design.texst(18, FontWeight.w700)),
            (a == 1)
                ? Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                          ),
                          margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color(0xfff2f4f5),
                            // border: Border.all(
                            //   color: const Color.fromRGBO(0, 0, 0, 1),
                            //   width: 1,
                            // ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Busseats3()),
                      SizedBox(
                        height: 100,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: const Text(
                                    "Are You Sure You Want To Continue",
                                  ),
                                  content: const Text("Book?"),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'No'),
                                      child: const Text(
                                        'No',
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Yes'),
                                      child: const Text(
                                        'Yes',
                                        style: TextStyle(
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeView(),),);
                            },
                            child: const Text('Confirm'),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF656CEE),
                              // fixedSize: Size(Get.width * 0.8, 50),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                        ),
                        margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color(0xfff2f4f5),
                          // border: Border.all(
                          //   color: const Color.fromRGBO(0, 0, 0, 1),
                          //   width: 0,
                          // ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Busseats4(),
                      ),
                    SizedBox(
                      height: 100,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: const Text(
                                  "Are You Sure You Want To Continue",
                                ),
                                content: const Text("Book?"),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'No'),
                                    child: const Text(
                                      'No',
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Yes'),
                                    child: const Text(
                                      'Yes',
                                      style: TextStyle(
                                        color: Colors.greenAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeView(),),);
                          },
                          child: const Text('Confirm'),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF656CEE),
                            // fixedSize: Size(Get.width * 0.8, 50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            Container(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
