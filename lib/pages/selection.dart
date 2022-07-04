import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shani_bus/pages/booking.dart';
import 'package:shani_bus/pages/designs.dart';

import 'booking2.dart';

class selection extends StatefulWidget {
  const selection({Key? key}) : super(key: key);

  @override
  _selectionState createState() => _selectionState();
}

class _selectionState extends State<selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Sleeper 2/2
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => busbook(2, "Seater 2/2"),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: 138,
                  height: 48,
                  decoration: design.boxdec(),
                  child: const Center(
                      child: Text(
                    'Seater 2/2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(9, 9, 9, 1),
                      fontFamily: 'Inter',
                      fontSize: 18,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),

              /// Seater 2/3
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => busbook(1, "Seater 2/3")));
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: 138,
                  height: 48,
                  decoration: design.boxdec(),
                  child: const Center(
                      child: Text(
                    'Seater 2/3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(9, 9, 9, 1),
                      fontFamily: 'Inter',
                      fontSize: 18,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),

              /// Sleeper 2/2
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => busbook2(1, "Sleeper 2/2")));
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: 138,
                  height: 48,
                  decoration: design.boxdec(),
                  child: const Center(
                      child: Text(
                    'Sleeper 2/2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(9, 9, 9, 1),
                      fontFamily: 'Inter',
                      fontSize: 18,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),

              /// Seater 1/2
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => busbook2(2, "Seater 1/2")));
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: 138,
                  height: 48,
                  decoration: design.boxdec(),
                  child: const Center(
                      child: Text(
                    'Seater 1/2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(9, 9, 9, 1),
                      fontFamily: 'Inter',
                      fontSize: 18,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
