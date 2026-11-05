import 'package:flutter/material.dart';
import 'package:lutfi/navigation/about_page.dart';

class Contoh extends StatelessWidget {
  const Contoh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
              MaterialPageRoute(
                builder: (context) {
                  return AboutPage(
                    nama:"Ambatukam",
                    kelas:"XII TKR",
                    umur: 35,
                  );
                }
                )
                );
            },
            child: Text("pindah halaman about")
            ),
            ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/latihan_kelompok');
        },
        child: Text("Latihan Kelompok"),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/latihan_mandiri');
        },
        child: Text("Latihan Mandiri"),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/list_view');
        },
        child: Text("Latihan List View"),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/container_widget');
        },
        child: Text("Latihan Container"),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/row_column_widget');
        },
        child: Text("Latihan Row Column"),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/size_box_stack');
        },
        child: Text("Latihan Sizedbox Stack"),
        ),
          ],
        ),
      ),
    );
  }
}