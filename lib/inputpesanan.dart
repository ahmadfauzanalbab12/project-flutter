import 'package:flutter/material.dart';
import 'package:intent/tampilpesanan.dart';

class Kursus extends StatefulWidget {
  const Kursus({super.key});

  @override
  State<Kursus> createState() => _KursusState();
}

class _KursusState extends State<Kursus> {
  TextEditingController noPesan = TextEditingController();
  TextEditingController namaPemesan = TextEditingController();
  TextEditingController noTelp = TextEditingController();

  int? pembayaran;
  String? metodebayar;

  bool jeruk = false;
  bool alpukat = false;
  bool mie = false;
  bool gado = false;

  String kartu = "Gold";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Input Pesanan"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: Form(
        child: ListView(
          children: [
            TextFormField(
              controller: noPesan,
              decoration: const InputDecoration(
                labelText: "Nomor Pesanan",
              ),
            ),

            const SizedBox(height: 8),

            TextFormField(
              controller: namaPemesan,
              decoration: const InputDecoration(
                labelText: "Nama",
              ),
            ),

            const SizedBox(height: 8),

            TextFormField(
              controller: noTelp,
              decoration: const InputDecoration(
                labelText: "Nomor Telepon",
              ),
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Text("Kartu Anggota :"),
                const SizedBox(width: 5),

                DropdownButton<String>(
                  icon: const Icon(Icons.keyboard_arrow_down),
                  value: kartu,
                  items: const [
                    DropdownMenuItem(
                      value: "Gold",
                      child: Text("Gold - Diskon 10%"),
                    ),
                    DropdownMenuItem(
                      value: "Silver",
                      child: Text("Silver - Diskon 5%"),
                    ),
                    DropdownMenuItem(
                      value: "Perunggu",
                      child: Text("Perunggu - Diskon 2.5%"),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      kartu = newValue!;
                    });
                  },
                ),
              ],
            ),

            Row(
              children: [
                const Text("Jenis Pembayaran: "),

                Radio<int>(
                  value: 1,
                  groupValue: pembayaran,
                  onChanged: (value) {
                    setState(() {
                      pembayaran = value;
                      metodebayar = "Tunai";
                    });
                    print(metodebayar);
                  },
                ),

                const Text("Tunai - PPN 3%"),

                Radio<int>(
                  value: 2,
                  groupValue: pembayaran,
                  onChanged: (value) {
                    setState(() {
                      pembayaran = value;
                      metodebayar = "Transfer";
                    });
                    print(metodebayar);
                  },
                ),

                const Text("Transfer - PPN 2%"),

                Radio<int>(
                  value: 3,
                  groupValue: pembayaran,
                  onChanged: (value) {
                    setState(() {
                      pembayaran = value;
                      metodebayar = "Dana";
                    });
                    print(metodebayar);
                  },
                ),

                const Text("Dana - PPN 1.5%"),
              ],
            ),

            const SizedBox(height: 8),

            Column(
              children: [
                const Text("Pesanan:"),

                CheckboxListTile(
                  title: const Text("Jus Jeruk - Rp15000"),
                  value: jeruk,
                  onChanged: (value) {
                    setState(() {
                      jeruk = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  title: const Text("Alpukat - Rp20000"),
                  value: alpukat,
                  onChanged: (value) {
                    setState(() {
                      alpukat = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  title: const Text("Mie Rebus - Rp10000"),
                  value: mie,
                  onChanged: (value) {
                    setState(() {
                      mie = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  title: const Text("Gado-Gado - Rp17500"),
                  value: gado,
                  onChanged: (value) {
                    setState(() {
                      gado = value!;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 8),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tampilkursus(
                      noPesan: noPesan.text,
                      namaPemesan: namaPemesan.text,
                      noTelp: noTelp.text,
                      metodebayar: metodebayar.toString(),
                      kartu: kartu,
                      jeruk: jeruk,
                      alpukat: alpukat,
                      mie: mie,
                      gado: gado,
                    ),
                  ),
                );
              },
              child: const Text("Pesan"),
            ),
          ],
        ),
      ),
    );
  }
}