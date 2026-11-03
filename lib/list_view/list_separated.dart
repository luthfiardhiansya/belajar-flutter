import 'package:flutter/material.dart';

class ListSeparated extends StatelessWidget {
  ListSeparated({super.key});

  var partai = ["Golongan Karya", "PDI", "PKB", "Wa Ijo"];
  var partaiColour = [Colors.amber,Colors.red,Colors.blue,Colors.green];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 400,
          width: 400,
          color: partaiColour[index],
          child: Center(child: Text(partai[index].toString()),),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black,
          height: 20,
          radius: BorderRadius.circular(12),
          indent: 50,
          endIndent: 50,
          thickness: 2,
        );
      }
    );
  }
}