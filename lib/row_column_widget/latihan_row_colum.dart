import 'package:flutter/material.dart';

class LatihanRowColum extends StatelessWidget {
  const LatihanRowColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.only(right: 80,left: 80, top: 50, bottom: 40),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
        Text("Save Now \n"
                  "Find Anytime",
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20 )),
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
            margin: EdgeInsets.only(top: 7),
            height: 30,
            width: 220,
            alignment: Alignment.center,
decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(
      textAlign: TextAlign.center,
      "Search",
      style: TextStyle(
        fontSize: 15,
      ),
      ),
          ),
          Container(
            margin: EdgeInsets.only(top: 7),
            height: 30,
            width: 30,
decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      
      child: const Icon(
                        Icons.star,
                        color: Colors.redAccent,
                        size: 22,
                      ),
          )
            ],
          ),
          Row(
      mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
      margin: EdgeInsets.only(left: 10, top: 10),
                child: Text("data",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
      height: 120,
      width: 120,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLQ5qEXM7ZesxuQjxfyX_Jqf_EFJK1c8ZrF0f-MsDCQ&s=10"),
        fit: BoxFit.fill,          
        )
      ),
      child: Text(
        textAlign: TextAlign.center,
        "ayam goreng enakk",
        style: TextStyle(
          backgroundColor: const Color.fromARGB(255, 249, 249, 249),
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
              ),
              Container(
      height: 120,
      width: 120,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLQ5qEXM7ZesxuQjxfyX_Jqf_EFJK1c8ZrF0f-MsDCQ&s=10"),
        fit: BoxFit.fill,          
        )
      ),
      child: Text(
        textAlign: TextAlign.center,
        "ayam goreng enakk",
        style: TextStyle(
          backgroundColor: const Color.fromARGB(255, 249, 249, 249),
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
              ),
            ],
          ),
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
      height: 120,
      width: 120,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLQ5qEXM7ZesxuQjxfyX_Jqf_EFJK1c8ZrF0f-MsDCQ&s=10"),
        fit: BoxFit.fill,          
        )
      ),
      child: Text(
        textAlign: TextAlign.center,
        "ayam goreng enakk",
        style: TextStyle(
          backgroundColor: const Color.fromARGB(255, 249, 249, 249),
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
              ),
              Container(
      height: 120,
      width: 120,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLQ5qEXM7ZesxuQjxfyX_Jqf_EFJK1c8ZrF0f-MsDCQ&s=10"),
        fit: BoxFit.fill,          
        )
      ),
      child: Text(
        textAlign: TextAlign.center,
        "ayam goreng enakk",
        style: TextStyle(
          backgroundColor: const Color.fromARGB(255, 249, 249, 249),
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
              )
            ],
          ),
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
              height: 120,
      width: 120,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLQ5qEXM7ZesxuQjxfyX_Jqf_EFJK1c8ZrF0f-MsDCQ&s=10"),
        fit: BoxFit.fill,          
        )
      ),
      child: Text(
        textAlign: TextAlign.center,
        "ayam goreng enakk",
        style: TextStyle(
          backgroundColor: const Color.fromARGB(255, 249, 249, 249),
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
              ),
              Container(
      height: 120,
      width: 120,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLQ5qEXM7ZesxuQjxfyX_Jqf_EFJK1c8ZrF0f-MsDCQ&s=10"),
        fit: BoxFit.fill,          
        )
      ),
      child: Text(
        textAlign: TextAlign.center,
        "ayam goreng enakk",
        style: TextStyle(
          backgroundColor: const Color.fromARGB(255, 249, 249, 249),
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
              )
            ],
          )
        ],
      ),
      
    );
  }
}