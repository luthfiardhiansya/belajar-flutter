import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const LatihanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(20),
      alignment: Alignment.bottomCenter,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 5, 5, 5), width: 2),
        color: const Color.fromARGB(255, 243, 244, 245),
      image: DecorationImage(image: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtGB1BhwM87QUc4bQRo9PSVs4W9GIh4i11y2P43t-6sg&s=10"
          ),
                    fit: BoxFit.fill,          
      ),
      ),
      child:  Text(
        textAlign: TextAlign.justify,
        "Ayam adu, atau yang sering disebut ayam laga (fighting cock), adalah ras ayam jantan (jago) yang memiliki karakteristik fisik tegap, otot kuat, dan mental bertarung yang tinggi. Di Indonesia, ayam-ayam ini dipelihara oleh para penghobi unggas karena keunikan teknik bertarung, bentuk fisik, serta nilai pelestarian ras unggulnya.",
         style: TextStyle(
          backgroundColor: const Color.fromARGB(255, 20, 212, 116),
          color: Colors.black,
          fontSize: 15 ),
          )
    );
  }
}