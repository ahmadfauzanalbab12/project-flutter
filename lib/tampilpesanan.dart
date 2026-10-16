import 'package:flutter/material.dart';

class Tampilkursus extends StatefulWidget {
  final String noPesan, namaPemesan, noTelp, metodebayar, kartu;
  final bool jeruk, alpukat, mie, gado;

  const Tampilkursus({
    super.key,
    required this.noPesan,
    required this.namaPemesan,
    required this.noTelp,
    required this.metodebayar,
    required this.kartu,
    required this.jeruk,
    required this.alpukat,
    required this.mie,
    required this.gado,
  });

  @override
  State<Tampilkursus> createState() => _TampilkursusState();
}

class _TampilkursusState extends State<Tampilkursus> {
  double total = 0;
  double diskon = 0;
  double totalBayar = 0;
  double totalsetelahdiskon = 0;
  double ppn = 0;

  void hitung() {
    total = 0;

    if (widget.jeruk) {
      total += 15000;
    }

    if (widget.alpukat) {
      total += 20000;
    }

    if (widget.mie) {
      total += 10000;
    }

    if (widget.gado) {
      total += 17500;
    }

    if (widget.kartu == "Gold") {
      diskon = total * 0.10;
    } else if (widget.kartu == "Silver") {
      diskon = total * 0.05;
    } else {
      diskon = total * 0.025;
    }

    totalsetelahdiskon = total - diskon;

    if (widget.metodebayar == "Tunai") {
      ppn = total * 0.03;
    } else if (widget.metodebayar == "Transfer") {
      ppn = total * 0.02;
    } else {
      ppn = total * 0.015;
    }

    totalBayar = totalsetelahdiskon + ppn;
  }

  @override
  Widget build(BuildContext context) {
    hitung();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Tampil Pesanan"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nomor Pesanan : ${widget.noPesan}"),
            const SizedBox(height: 8),
            Text("Nama : ${widget.namaPemesan}"),
            const SizedBox(height: 8),
            Text("Nomor Telepon : ${widget.noTelp}"),
            const SizedBox(height: 8),
            Text("Kartu Anggota : ${widget.kartu}"),
            const SizedBox(height: 8),
            Text("Metode Pembayaran : ${widget.metodebayar}"),
            const SizedBox(height: 8),
            Text("Pesanan :"),
            const SizedBox(height: 8),

            if (widget.jeruk) Text("Jus Jeruk : Rp15000"),
            const SizedBox(height: 8),

            if (widget.alpukat) Text("Alpukat : Rp20000"),
            const SizedBox(height: 8),

            if (widget.mie) Text("Mie Rebus : Rp10000"),
            const SizedBox(height: 8),

            if (widget.gado == true) Text("Gado-Gado : Rp17500"),
            const SizedBox(height: 8),

            Divider(),

            Text("Total : Rp$total"),
            const SizedBox(height: 8),

            Text("Diskon : -Rp$diskon"),
            const SizedBox(height: 8),

            Text("PPN = +Rp$ppn"),
            const SizedBox(height: 8),

            Text("Total Bayar : Rp$totalBayar"),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
