import 'package:flutter/material.dart';

class KartuProfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Center(
      child: Container(
        height: 72,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 6)],
        ),

        child: Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMNgabJ9FTO-Z0xwqzf7qnJSJR8L03_RHPdZ-xJZHFmy2vxF7PzgdMkzg&s=10"),
              ),
            ),

            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Chino Moreno",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),),
                  SizedBox(height: 5),
                  Text("Deftones",
                  style: TextStyle(
                    fontStyle: FontStyle.italic
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}