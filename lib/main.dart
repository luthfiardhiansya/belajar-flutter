import 'package:flutter/material.dart';
import 'package:lutfi/container_widget/latihan_container.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ayam Jago Namanya Arjun"),
          backgroundColor: const Color.fromARGB(255, 99, 227, 30),
        ),
        body: LatihanContainer(),
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello Flutter", style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.amber,
        fontStyle: FontStyle.italic,
         ),
      ),
    );
  }
}