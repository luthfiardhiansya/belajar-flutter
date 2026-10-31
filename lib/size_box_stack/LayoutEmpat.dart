import 'package:flutter/material.dart';

class Layoutempat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqo-QugzB6IUafueN_n2vQc3Op_qOyVMHl57QvSuufA&s=10"
                ),
                fit: BoxFit.fill
                ),
              ),
            ),
            Positioned(
              bottom: -30,
              left: 20,
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMgFB57A0HdB2qhSR92-V9n8j3cm7pwpu68AeuMgLInJiF8l6BiLexhII&s=10"),)
              ),
            ),
          ],
        ),

        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Gus Akira Nakai 99",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ), 
                  Text("Gun's N Rose's")],
                ),
              )
            ],
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Follow"))
      ],
    );
  }
}