import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String nama;
  final String gambar;
  final String deskripsi;

  DetailScreen({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nama)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(gambar),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              nama,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(deskripsi, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
