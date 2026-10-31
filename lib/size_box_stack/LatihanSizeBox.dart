import 'package:flutter/material.dart';

class Latihansizebox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 72,
            padding: EdgeInsets.all(12),
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
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.notification_add),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            Center(
              child: Container(
        height: 110,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:  const Color.fromARGB(255, 1, 94, 255),
          borderRadius: BorderRadius.circular(8),
        ),

        child: Row(
          children: [
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 15,
                    width: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 138, 216, 255).withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Tetap semangat",
                  style: TextStyle(
                    fontSize: 7,
                    color: Colors.white
                  ),
                  ),
                  alignment: Alignment.center,
                  ),
                  Text("Belajar Flutter!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),),
                  SizedBox(height: 5),
                  Text("Belajar Flutter Bersama Gumilang",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 10
                  ),),
                  SizedBox(height: 10),
                  Container(
                    height: 15,
                    width: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0).withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Gumilan Ayam",
                  style: TextStyle(
                    fontSize: 7,
                    color: Colors.white
                  ),
                  ),
                  alignment: Alignment.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
            )
          ],
        )
      ],
    );
  }
}