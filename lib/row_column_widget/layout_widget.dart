import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      width: double.infinity,
      height: 100,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.call, size: 40), Text("Call")],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.share, size: 40), Text("Share")],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.navigation, size: 40), Text("Navogation")],
          ),
        ],
      ),
    ));
  }
}