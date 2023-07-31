import 'package:flutter/material.dart';

import '../../common/button/btn_toggle.dart';
import '../../common/const/colors.dart';

class AlarmList extends StatelessWidget {

  const AlarmList({super.key,
    required this.title,

    required this.use,
    required this.time,
  });

  final String title;

  final bool use;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Card(
            margin: const EdgeInsets.only(right: 10, left: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      BtnToggle(
                        value: use,
                        onChanged: (bool value) {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 34.0,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        'M T W T F S S',
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: MAIN_COLOR,
                      width: 2,
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: MAIN_COLOR,
                    ),
                  ),
                ))),
      ],
    );
  }
}
