import 'package:flutter/material.dart';
import 'package:flutter_tugas1/loginpage.dart';
import 'package:flutter_tugas1/addpage.dart';
import 'package:flutter_tugas1/dashboard.dart';
import 'package:flutter_tugas1/updatepage.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Management System Balqis Rosa Sekamayang - 714220006',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF84b8c6), // Ganti warna AppBar menjadi #84b8c6
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildGridButton(context, 'Dashboard', Icons.dashboard, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage()),
              );
            }),
            _buildGridButton(context, 'Add', Icons.add, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPage()),
              );
            }),
            _buildGridButton(context, 'Update', Icons.update, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdatePage(
                    faktur: 'F001',
                    tanggal: '2023-10-21',
                    customer: 'John Doe',
                    jumlah: '5',
                    total: 'Rp 500.000',
                  ),
                ),
              );
            }),
            _buildGridButton(context, 'Logout', Icons.logout, () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildGridButton(BuildContext context, String label, IconData icon, VoidCallback onPressed) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.blue), // Memperkecil ukuran icon
              SizedBox(height: 10),
              Text(
                label,
                style: TextStyle(
                  fontSize: 16, // Memperkecil ukuran font
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
