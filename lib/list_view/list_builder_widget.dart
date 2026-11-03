import 'package:flutter/material.dart';

class ListBuilderWidget extends StatelessWidget {
  ListBuilderWidget({super.key});

  var partai = ["Golongan Karya", "PDI", "PKB", "Wa Ijo"];
  var partaiColour = [Colors.amber,Colors.red,Colors.blue,Colors.green];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 400,
          width: 400,
          color: partaiColour[index],
          child: Center(child: Text(partai[index].toString()),),
        );
      }
    );
  }
}