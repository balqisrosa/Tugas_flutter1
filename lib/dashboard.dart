import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Penjualan'),
        backgroundColor: Color(0xFF84b8c6), // Ganti warna AppBar
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Agar seluruh konten bisa discroll secara vertikal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Posisi di atas
          children: [
            // Menambahkan judul "Dashboard Penjualan"
            Text(
              'Dashboard Penjualan',
              style: TextStyle(
                fontSize: 24, // Ukuran font untuk judul
                fontWeight: FontWeight.bold, // Ketebalan font
              ),
            ),
            SizedBox(height: 20), // Jarak antara judul dan tabel
            Center( // Memusatkan tabel
              child: Container(
                constraints: BoxConstraints(maxWidth: 800), // Batasi lebar maksimum tabel
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Agar tabel bisa discroll horizontal
                  child: DataTable(
                    headingRowColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.grey.shade300, // Warna background header tabel
                    ),
                    columns: [
                      DataColumn(label: Text('No. Faktur', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Tanggal', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Nama Pelanggan', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Jumlah Barang', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Total Penjualan', style: TextStyle(fontWeight: FontWeight.bold))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('F001')),
                        DataCell(Text('2023-10-21')),
                        DataCell(Text('Balqis')),
                        DataCell(Text('5')),
                        DataCell(Text('Rp 500.000')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('F002')),
                        DataCell(Text('2023-10-22')),
                        DataCell(Text('Rosa')),
                        DataCell(Text('3')),
                        DataCell(Text('Rp 300.000')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('F003')),
                        DataCell(Text('2023-10-23')),
                        DataCell(Text('Sekamayang')),
                        DataCell(Text('2')),
                        DataCell(Text('Rp 200.000')),
                      ]),
                    ],
                    // Tambahkan border di sekeliling tabel
                    border: TableBorder.all(
                      color: Colors.grey.shade400,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
