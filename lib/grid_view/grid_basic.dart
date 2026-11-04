import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 0.5,

      children: [
        Container(
          color: Colors.amber,
          child: FlutterLogo(
            size: 20,
            style: FlutterLogoStyle.markOnly,
            textColor: Colors.blue,
          ),
        ),
        Container(
          color: Colors.red,
          child: FlutterLogo(size: 20, style: FlutterLogoStyle.horizontal),
        ),
        Container(
          color: Colors.green,
          child: FlutterLogo(size: 20, style: FlutterLogoStyle.stacked),
        ),
        Container(
          color: Colors.purple,
          child: FlutterLogo(size: 20, style: FlutterLogoStyle.markOnly),
        ),
      ],
    );
  }
}