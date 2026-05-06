import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> wisata = [
    {
      "nama": "Pantai",
      "gambar": "https://picsum.photos/200/300?1",
      "deskripsi": "Pantai indah dengan pasir putih",
    },
    {
      "nama": "Gunung",
      "gambar": "https://picsum.photos/200/300?2",
      "deskripsi": "Gunung tinggi dengan udara segar",
    },
    {
      "nama": "Danau",
      "gambar": "https://picsum.photos/200/300?3",
      "deskripsi": "Danau tenang dan pemandangan asri",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Travel App"), centerTitle: true),
      body: ListView.builder(
        itemCount: wisata.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  wisata[index]["gambar"]!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(wisata[index]["nama"]!),
              subtitle: Text(wisata[index]["deskripsi"]!),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      nama: wisata[index]["nama"]!,
                      gambar: wisata[index]["gambar"]!,
                      deskripsi: wisata[index]["deskripsi"]!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
      ),
    );
  }
}
