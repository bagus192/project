import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),
            SizedBox(height: 20),
            Text("Nama: bayu ", style: TextStyle(fontSize: 18)),
            Text("Prodi: Informatika", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
