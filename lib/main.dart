import 'package:flutter/material.dart';
import 'package:lutfi/row_column_widget/column_widget.dart';
import 'package:lutfi/container_widget/latihan_container.dart';
import 'package:lutfi/container_widget/poster_widget.dart';
import 'package:lutfi/row_column_widget/latihan_row_colum.dart';
import 'package:lutfi/row_column_widget/layout_widget.dart';
import 'package:lutfi/row_column_widget/row_column.dart';
import 'package:lutfi/row_column_widget/row_widget.dart';
 
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
          title: Text("Ayam Jago"),
          backgroundColor: const Color.fromARGB(255, 99, 227, 30),
        ),
        body: LatihanRowColum(),
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