// dashboard.dart
import 'package:flutter/material.dart';
import 'detail_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Penjualan'),
        backgroundColor: Color(0xFF84b8c6),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dashboard Penjualan',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Aksi untuk menambah penjualan baru
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF84b8c6), // Warna tombol
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Tambah',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 800),
                  child: Column(
                    children: [
                      _buildSaleCard(context, 'F001', '2023-10-21', 'Balqis', '5', 'Rp 500.000'),
                      _buildSaleCard(context, 'F002', '2023-10-22', 'Rosa', '3', 'Rp 300.000'),
                      _buildSaleCard(context, 'F003', '2023-10-23', 'Sekamayang', '2', 'Rp 200.000'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSaleCard(BuildContext context, String faktur, String tanggal, String pelanggan, String jumlah, String total) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              faktur: faktur,
              tanggal: tanggal,
              pelanggan: pelanggan,
              jumlah: jumlah,
              total: total,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color(0xFF84b8c6),
                width: 5,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('No. Faktur: $faktur', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('Tanggal: $tanggal'),
              Text('Nama Pelanggan: $pelanggan'),
              Text('Jumlah Barang: $jumlah'),
              Text('Total Penjualan: $total'),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.arrow_forward, color: Color(0xFF84b8c6)), // Ikon untuk menunjukkan detail lebih lanjut
              ),
            ],
          ),
        ),
      ),
    );
  }
}
