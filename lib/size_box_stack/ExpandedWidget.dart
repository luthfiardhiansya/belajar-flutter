import 'package:flutter/material.dart';

class Expandedwidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, color: Colors.amber),

        Expanded(
          flex: 1,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 229, 230, 236),
          ),
        ),

        Expanded(
          flex: 1,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 117, 179, 244),
          ),
        ),

        Expanded(
          flex: 3,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 57, 54, 244),
          ),
        ),
      ],
    );
  }
}