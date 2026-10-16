import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'biodata.dart';
import 'tampilbiodata.dart';
import 'inputpesanan.dart';

class Halamanutama extends StatefulWidget {
  const Halamanutama({super.key});

  @override
  State<Halamanutama> createState() => _HalamanutamaState();
}

class _HalamanutamaState extends State<Halamanutama> {
  String nama = " ";
  String jk = " ";
  String nim = " ";
  String status = " ";
  List<String> hobi = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Menu Drawer"),
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("lib/image/utama_png.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Selamat Datang Pada Aplikasi Biodata",
              ),

              const SizedBox(height: 20),

              const Text(
                "Input Biodata digunakan untuk menginput NIM, "
                "Nama, Alamat, Jenis Kelamin, Agama dan Hobi",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              const Text(
                "Tampil Biodata digunakan untuk menampilkan data NIM, "
                "Nama, Alamat, Jenis Kelamin, Agama dan Hobi",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              const Text("Terima Kasih"),
            ],
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/image/coba_png.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("lib/image/logo_png.jpeg"),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Input Biodata"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const biodata(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Input Pesanan"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Kursus(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text("Tampil Biodata"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tampilbiodata(
                      name: nama,
                      nim: nim,
                      jk: jk,
                      hobi: hobi,
                      status: status,
                    ),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.arrow_back),
              title: const Text("Kembali"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.close),
              title: const Text("Keluar"),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}