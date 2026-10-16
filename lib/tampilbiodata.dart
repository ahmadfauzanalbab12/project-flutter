import 'package:flutter/material.dart';
import 'package:intent/halamanUtama.dart';

class tampilbiodata extends StatelessWidget {
  final String name, nim, jk, status;
  final List hobi;

  const tampilbiodata({
    super.key,
    required this.name,
    required this.status,
    required this.jk,
    required this.nim,
    required this.hobi,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: lamantampilbiodata(
          nama: name, nim: nim, jk: jk, hobi: hobi, status: status),
    );
  }
}

class lamantampilbiodata extends StatefulWidget {
  final String nama, nim, jk, status;
  final List hobi;

  const lamantampilbiodata({
    super.key,
    required this.nama,
    required this.status,
    required this.nim,
    required this.jk,
    required this.hobi,
  });

  @override
  State<lamantampilbiodata> createState() => _lamantampilbiodataState();
}

class _lamantampilbiodataState extends State<lamantampilbiodata> {
  Widget baris(String label, String isi) {
    return Row(
      children: [
        SizedBox(width: 150, child: Text(label)),
        const SizedBox(width: 10, child: Text(": ")),
        Text(isi),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Tampil Biodata"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Halamanutama()),
                );
              });
            },
            icon: const Icon(Icons.close_sharp),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 380,
          height: 400,
          child: Column(children: [
            baris("Nim : ", widget.nim),
            baris("Nama : ", widget.nama),
            baris("Jenis Kelamin ", widget.jk),
            baris("Status ", widget.status),
            baris("Hobi ", widget.hobi.toString()),
          ]),
        ),
      ),
    );
  }
}