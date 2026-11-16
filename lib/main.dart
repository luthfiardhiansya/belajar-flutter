import 'package:flutter/material.dart';
import 'package:lutfi/routes/app_routes.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: AppRoute.menu,
      routes: AppRoute.routes,

      // debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Ayam Jago",
      //     style: TextStyle(
      //       fontStyle: FontStyle.italic,
      //       fontWeight: FontWeight.bold
      //     ),),
      //     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      //   ),
      //   body: Contoh(),
      // ),
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