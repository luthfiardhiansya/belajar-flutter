import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String nama, kelas;
  final int umur;

  const AboutPage({
    super.key,
    required this.nama,
    required this.kelas,
    required this.umur,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halaman About"),
            Text("Nama Lengkap: $nama"),
            Text("Kelas: $kelas"),
            Text("Umur: $umur"),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
