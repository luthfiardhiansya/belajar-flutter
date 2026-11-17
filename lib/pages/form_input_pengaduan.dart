import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lutfi/pages/form_output_pengaduan.dart';

class Pengaduan extends StatefulWidget {
  const Pengaduan({super.key});

  @override
  State<Pengaduan> createState() => _PengaduanState();
}

class _PengaduanState extends State<Pengaduan> {
  final _formKey = GlobalKey<FormState>();
  final _namaC = TextEditingController();
  final _lokasi = TextEditingController();
  final tglpengaduan = TextEditingController();
  final _pesan = TextEditingController();
  String? _kategori;
  String? _kelas;
  bool _setuju = false;

  @override
  void initState() {
    tglpengaduan.text = '';
    super.initState();
  }

  @override
  void dispose() {
    _namaC.dispose();
    _lokasi.dispose();
    tglpengaduan.dispose();
    _pesan.dispose();
    super.dispose();
  }

  void _kirim() {
    if (_formKey.currentState!.validate()) {
      if (!_setuju) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Kamu harus menyetujui tata tertib')),
        );
        return;
      }
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HasilPage(
            nama: _namaC.text,
            kelas: _kelas!,
            kategori: _kategori!,
            lokasi: _lokasi.text,
            tglpengaduan: tglpengaduan.text,
            pesan: _pesan.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengaduan Fasilitas Sekolah')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _namaC,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return 'Nama tidak boleh kosong';
                  if (v.length < 3) return 'Nama minimal 3 huruf';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                initialValue: _kelas,
                decoration: const InputDecoration(
                  labelText: 'Pilih Kelas',
                  border: OutlineInputBorder(),
                ),
                items:
                    [
                    'X-RPL 1',
                    'X-RPL 2',
                    'XI-RPL 1',
                    'XI-RPL 2',
                    'XII-RPL 1',
                    'XII-RPL 2',
                    'XII-RPL 3',
                    'X-TSM 1',
                    'X-TSM 2',
                    'XI-TSM 1',
                    'XI-TSM 2',
                    'XII-TSM 1',
                    'X-TKR 1',
                    'X-TKR 2',
                    'XI-TKR 1',
                    'XI-TKR 2',
                    'XII-TKR 1' ,
                    'XII-TKR 2'   
                    ]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                onChanged: (v) => setState(() => _kelas = v),
                validator: (v) =>
                    v == null ? 'Pilih kelas anda' : null,
              ),
              
              const SizedBox(height: 18),
              TextFormField(
                controller: tglpengaduan,
                decoration: InputDecoration(
                  hintText: "Tanggal Pengaduan",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) return 'Input Tanggal Pengaduan';
                  return null;
                },
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      tglpengaduan.text = DateFormat('yyyy-MM-dd')
                          .format(pickedDate);
                    });
                  }
                },
              ),

              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                initialValue: _kategori,
                decoration: const InputDecoration(
                  labelText: 'Pilih Kategori',
                  border: OutlineInputBorder(),
                ),
                items:
                    [
                          'Ruang Kelas',
                          'Toilet',
                          'Bengkel TKR',
                          'Bengkel TSM',
                          'Lab RPL',
                          'Perpustakaan',
                          'Kelistrikan',
                          'Kebersihan',
                          'Keamanan',
                          'Lapangan',
                          'Kantin',
                          'Internet dan Jaringan',
                        ]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                onChanged: (v) => setState(() => _kategori = v),
                validator: (v) =>
                    v == null ? 'Pilih salah satu kategori' : null,
              ),

              const SizedBox(height: 16),
              TextFormField(
                controller: _lokasi,
                decoration: const InputDecoration(
                  labelText: 'Titik Lokasi',
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Lokasi tidak boleh kosong';
                  }
                  if (v.length < 3) return 'Lokasi harus jelas';
                  return null;
                },
              ),

              const SizedBox(height: 16),
              TextFormField(
                controller: _pesan,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'Pesan Pengaduan',
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Pesan Tidak Boleh Kosong';
                  }
                  if (v.length < 3) return 'Pesan harus jelas';
                  return null;
                },
              ),

              
              SwitchListTile(
                title: const Text('Saya membuat laporan ini dengan kondisi asli di lapangan',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),),
                value: _setuju,
                onChanged: (v) => setState(() => _setuju = v),
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _kirim, child: const Text('Kirim Pengaduan')),
            ],
          ),
        ),
      ),
    );
  }
}
