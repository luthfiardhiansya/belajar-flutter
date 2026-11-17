import 'package:flutter/material.dart';

class HasilPage extends StatelessWidget {
  final String nama, kelas, tglpengaduan, kategori, lokasi, pesan;

  const HasilPage({
    super.key,
    required this.nama,
    required this.kelas,
    required this.tglpengaduan,
    required this.kategori,
    required this.lokasi,
    required this.pesan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Pengaduan')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Data Pelapor',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  const Text('Nama Lengkap'),
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('Kelas'),
                  Text(
                    kelas,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Informasi Pengaduan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Tanggal Pengaduan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(tglpengaduan),
                  const Divider(height: 24),
                  const Text(
                    'Kategori',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(kategori),
                  const Divider(height: 24),
                  const Text(
                    'Titik Lokasi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(lokasi),
                  const Divider(height: 24),
                  const Text(
                    'Pesan Pengaduan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(pesan),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
