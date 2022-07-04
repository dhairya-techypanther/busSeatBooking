import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Busseats2 extends StatefulWidget {
  const Busseats2({Key? key}) : super(key: key);

  @override
  _BusseatsState createState() => _BusseatsState();
}

class _BusseatsState extends State<Busseats2> {
  final _chairStatus = [
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 3, 1],
    [1, 1, 1, 1, 1, 3],
    [2, 2, 2, 1, 3, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1],
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xfff2f4f5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 45),
            child: SvgPicture.asset(
              'assets/images/steering-wheel.svg',
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            ),
          ),
          for (int i = 0; i < 9; i++)
            Container(
              margin: EdgeInsets.only(top: i == 0 ? 30 : 0),
              child: Row(
                children: <Widget>[
                  for (int x = 1; x < 6; x++)
                    Expanded(
                      child: (x == 3) && (x == 3)
                          ? Container()
                          : Container(
                              height: 60,
                              margin: const EdgeInsets.all(5),
                              child: _chairStatus[i][x - 1] == 1
                                  ? availableChair(i, x - 1)
                                  : _chairStatus[i][x - 1] == 2
                                      ? selectedChair(i, x - 1)
                                      : reservedChair(),
                            ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget selectedChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 1;
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(3.0),
        ),
      ),
    );
  }

  Widget availableChair(int a, int b) {
    return InkWell(
      onTap: () {
        _chairStatus[a][b] = 2;
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(
            color: const Color.fromRGBO(0, 0, 0, 1),
            width: 1,
          ),
        ),
      ),
    );
  }

  Widget reservedChair() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(15, 15, 15, 0.24),
          borderRadius: BorderRadius.circular(3.0)),
    );
  }
}
