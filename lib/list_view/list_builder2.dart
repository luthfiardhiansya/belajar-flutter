import 'package:flutter/material.dart';

class ListBuilder2 extends StatelessWidget {
  ListBuilder2({super.key});

  final List<Map<String, dynamic>> siswa = [
    {'nama': 'Gumilang', 'kelas': 'XII RPL 1', 'umur': 17},
    {'nama': 'Ijo', 'kelas': 'XII RPL 1', 'umur': 58},
    {'nama': 'Amba', 'kelas': 'XII DKV 4', 'umur': 38},
    {'nama': 'Rusdi', 'kelas': 'XII ELEKTRO 2', 'umur': 39},
    ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: siswa.length,
      itemBuilder: (context, index) {
        final data = siswa[index];
        return Card(
          margin: EdgeInsets.all(15),
          child: ListTile(
            leading: CircleAvatar(child: Text(data['nama'][0])),
            title: Text(data['nama']),
            subtitle: Text("${data['kelas']} - ${data['umur'].toString()} Tahun",
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      }
    );
  }
}
