import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  final TextEditingController _fakturController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();
  final TextEditingController _customerController = TextEditingController();
  final TextEditingController _jumlahController = TextEditingController();
  final TextEditingController _totalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Penjualan'),
        backgroundColor: Color(0xFF84b8c6), // Mengatur warna latar belakang AppBar menjadi biru
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Posisi di atas
          children: <Widget>[
            // Menambahkan judul "Tambah Penjualan"
            Text(
              'Tambah Penjualan',
              style: TextStyle(
                fontSize: 24, // Ukuran font untuk judul
                fontWeight: FontWeight.bold, // Ketebalan font
              ),
            ),
            SizedBox(height: 20), // Jarak antara judul dan form
            Center( // Memusatkan form
              child: Container(
                width: 300, // Atur lebar kontainer sesuai kebutuhan
                child: Column(
                  children: [
                    TextField(
                      controller: _fakturController,
                      decoration: InputDecoration(labelText: 'No Faktur'),
                    ),
                    TextField(
                      controller: _tanggalController,
                      decoration: InputDecoration(labelText: 'Tanggal Penjualan'),
                    ),
                    TextField(
                      controller: _customerController,
                      decoration: InputDecoration(labelText: 'Nama Customer'),
                    ),
                    TextField(
                      controller: _jumlahController,
                      decoration: InputDecoration(labelText: 'Jumlah Barang'),
                    ),
                    TextField(
                      controller: _totalController,
                      decoration: InputDecoration(labelText: 'Total Penjualan'),
                    ),
                    SizedBox(height: 20), // Jarak antara form dan tombol
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Atur tombol bersebelahan
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF84b8c6), // Warna tombol
                            foregroundColor: Colors.white, // Warna teks tombol
                          ),
                          child: Text('Simpan'),
                          onPressed: () {
                            // Logika untuk menyimpan data penjualan
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF84b8c6), // Warna tombol
                            foregroundColor: Colors.white, // Warna teks tombol
                          ),
                          child: Text('Kembali'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
