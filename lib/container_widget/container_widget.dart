import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 2),
        gradient: LinearGradient(
        colors: [
          const Color.fromARGB(255, 209, 37, 37),
          const Color.fromARGB(255, 28, 112, 181),
          const Color.fromARGB(255, 219, 33, 200)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          ),
          image: DecorationImage(image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeWjX73IwlNJpPyoca1ZubA4z2hw0nb_PmNKg_OzHpCQ&s=10"
          ),
          fit: BoxFit.cover,          
          ),
      ),

      child:Center(child: Text(
        "Ayam adu, atau yang sering disebut ayam laga (fighting cock), adalah ras ayam jantan (jago) yang memiliki karakteristik fisik tegap, otot kuat, dan mental bertarung yang tinggi. Di Indonesia, ayam-ayam ini dipelihara oleh para penghobi unggas karena keunikan teknik bertarung, bentuk fisik, serta nilai pelestarian ras unggulnya."
        )),
    );
  }
}
