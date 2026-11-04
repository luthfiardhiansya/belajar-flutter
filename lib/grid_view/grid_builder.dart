import 'package:flutter/material.dart';

class GridBuilder extends StatelessWidget {
  GridBuilder({super.key});

  final List<Map<String, dynamic>> produk = [
    {'nama': 'Laptop', 'harga': 7000000, 'icon': Icons.laptop, 'warna': Colors.blue},
    {'nama': 'Smart Phone', 'harga': 5000000, 'icon': Icons.phone_android_rounded, 'warna': Colors.black},
    {'nama': 'HeadPhone', 'harga': 1500000, 'icon': Icons.headphones, 'warna': Colors.red},
    {'nama': 'Speaker', 'harga': 500000, 'icon': Icons.speaker, 'warna': Colors.green},
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: produk.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 1
        ),
      itemBuilder: (context, index) {
        final data = produk[index];

        return Card(
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(data['icon'], size: 50, color: data['warna']),
              SizedBox(height: 10),
              Text(data['nama'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Rp. ${data['harga']}"),
            ],
          ),
        );
      }
    );
  }
}