import 'package:flutter/material.dart';

class LatihanPakace extends StatelessWidget {
  const LatihanPakace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.brown,
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 16),
          child: Text(
            "INI JUDUL",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),

        Container(height: 40, width: 520, color: Colors.amber),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 16),
          child: Text(
            "INI JUDUL",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(height: 160, width: 220, color: Colors.amber),
            Container(height: 160, width: 220, color: Colors.amber),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(height: 160, width: 220, color: Colors.amber),
            Container(height: 160, width: 220, color: Colors.amber),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(height: 160, width: 220, color: Colors.amber),
            Container(height: 160, width: 220, color: Colors.amber),
          ],
        ),

        ],
      ),
    );
  }
}