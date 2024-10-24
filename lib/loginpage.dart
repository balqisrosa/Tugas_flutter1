import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Memposisikan di atas
          children: <Widget>[
            Align(
              alignment: Alignment.center, // Memusatkan secara horizontal
              child: Container(
                width: 300, // Atur lebar kontainer sesuai kebutuhan
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                    ),
                    SizedBox(height: 20), // Jarak antara form dan tombol
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF84b8c6), // Warna tombol
                        foregroundColor: Colors.white, // Warna teks tombol
                      ),
                      child: Center(child: Text('Login')), // Memusatkan teks
                      onPressed: () {
                        // Logika untuk login
                      },
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
