import 'package:flutter/material.dart';
import 'package:lutfi/latihan_mandiri/latihan_pertama.dart';
import 'package:lutfi/row_column_widget/column_widget.dart';
import 'package:lutfi/container_widget/latihan_container.dart';
import 'package:lutfi/container_widget/poster_widget.dart';
import 'package:lutfi/row_column_widget/latihan_pakace.dart';
import 'package:lutfi/row_column_widget/latihan_row_colum.dart';
import 'package:lutfi/row_column_widget/layout_widget.dart';
import 'package:lutfi/row_column_widget/row_column.dart';
import 'package:lutfi/row_column_widget/row_widget.dart';
import 'package:lutfi/size_box_stack/ExpandedWidget.dart';
import 'package:lutfi/size_box_stack/LatihanSizeBox.dart';
import 'package:lutfi/size_box_stack/LayoutDua.dart';
import 'package:lutfi/size_box_stack/LayoutEmpat.dart';
import 'package:lutfi/size_box_stack/LayoutSatu.dart';
import 'package:lutfi/size_box_stack/LayoutTiga.dart';
import 'package:lutfi/size_box_stack/SizeBoxWidget.dart';
import 'package:lutfi/size_box_stack/StackWidget.dart';
 
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
        body: LatihanPertama(),
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