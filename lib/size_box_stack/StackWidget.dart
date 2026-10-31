import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container( width: double.infinity, height: double.infinity, color: Colors.amber),
        Positioned(
          bottom: 50,
          right: 50,

          child: Icon(Icons.star, color: Colors.white),
        ),

        Positioned(top: 5, left: 10, child: Text("Label")),
        Positioned(
          right: 25,
          top: 195,
          left: 25,
          child: Container(
            color: Colors.blueAccent,
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}