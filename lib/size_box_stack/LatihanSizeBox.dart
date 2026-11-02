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
        height: 120,
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
                    height: 25,
                    width: 90,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 246, 246),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Gumilang Ayam",
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.blue
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
            ),

            Row(
              children: [
                SizedBox(width: 20),
                Text("Skill Keahlian:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 31, 2, 244)
                ),)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5),
                    image: DecorationImage(image: NetworkImage('https://cdn.brandfetch.io/domain/laravel.com/fallback/lettermark/theme/dark/h/400/w/400/icon?c=1bfwsmEH20zzEfSNTed'),
                    fit: BoxFit.cover)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                      right: 6, top: 6,
                        child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        ),
                      )),

                      Positioned(
                      right: 3, top: 2,
                      child: Icon(Icons.check_circle, color: Colors.blue)),

                      Positioned(
                      right: 5, bottom: 3,
                      child: Text("Laravel",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),))
                    ],
                  )
                ),
                Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5),
                    image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3KRF2KUVqHuSh4jJccD2jSJ7hAgRDt0AN9_kAQeDzZA&s=10'),
                    fit: BoxFit.cover)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                      right: 6, top: 6,
                        child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        ),
                      )),

                      Positioned(
                      right: 3, top: 2,
                      child: Icon(Icons.check_circle, color: Colors.blue)),

                      Positioned(
                      right: 5, bottom: 3,
                      child: Text("Tailwind",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),))
                    ],
                  )
                ),
                Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5),
                    image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3B7lR_13JZiYs545iZdVin_XGI2A2J72pI4T2azHfP7OI9CYOxs9K2cbf&s=10'),
                    fit: BoxFit.cover)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                      right: 6, top: 6,
                        child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        ),
                      )),

                      Positioned(
                      right: 3, top: 2,
                      child: Icon(Icons.check_circle, color: Colors.blue)),

                      Positioned(
                      right: 5, bottom: 3,
                      child: Text("Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),))
                    ],
                  )
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}