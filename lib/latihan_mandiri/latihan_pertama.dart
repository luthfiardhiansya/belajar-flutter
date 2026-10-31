import 'package:flutter/material.dart';

class LatihanPertama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 330,
        height: 600,
        margin: EdgeInsets.only(top: 12, bottom: 12),
        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 0.5)
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              width: double.infinity,
              height: 190,
              color: const Color.fromARGB(255, 91, 144, 237),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                  Image(image: AssetImage('lib/assets/image/logo-dana.png'),
                  width: 30,
                  height: 30,
                  ),

                  SizedBox(width: 4),

                  Text("Rp", 
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white
                  ),),

                  Text("10.000.000",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white
                  ),),

                  SizedBox(width: 4),

                  Icon(Icons.remove_red_eye, color: Colors.white, size: 13,)
                ],
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.add_business, color: Colors.white, size: 40),
                          Text("isi saldo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.arrow_circle_down_outlined, color: Colors.white, size: 40),
                          Text("minta",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.send_sharp, color: Colors.white, size: 40),
                          Text("kirim",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.mail, color: Colors.white, size: 40),
                          Text("pesan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}