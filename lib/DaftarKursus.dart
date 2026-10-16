import 'package:flutter/material.dart';
import 'halamanUtama.dart';

class DaftarKursus extends StatelessWidget {
  const DaftarKursus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Input Kursus'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Halamanutama(),
                ),
              );
            },
            icon: const Icon(Icons.close_sharp),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nama Kursus :',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}