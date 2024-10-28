// detail_page.dart
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String faktur;
  final String tanggal;
  final String pelanggan;
  final String jumlah;
  final String total;

  DetailPage({
    required this.faktur,
    required this.tanggal,
    required this.pelanggan,
    required this.jumlah,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
        backgroundColor: Color(0xFF84b8c6),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    color: Colors.white,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width *
                          0.8, // Mengatur lebar menjadi 80% dari layar
                      padding: EdgeInsets.all(16.0),
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
                          Text('No. Faktur: $faktur',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text('Tanggal: $tanggal',
                              style: TextStyle(fontSize: 16)),
                          Text('Nama Pelanggan: $pelanggan',
                              style: TextStyle(fontSize: 16)),
                          Text('Jumlah Barang: $jumlah',
                              style: TextStyle(fontSize: 16)),
                          Text('Total Penjualan: $total',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
