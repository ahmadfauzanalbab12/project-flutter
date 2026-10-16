import 'package:flutter/material.dart';
import 'package:intent/halamanUtama.dart';

void main() {
  runApp(const intentprak());
}

class intentprak extends StatefulWidget {
  const intentprak({super.key});

  @override
  State<intentprak> createState() => _intentprakState();
}

class _intentprakState extends State<intentprak> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const prakhalinten(),
    );
  }
}

class prakhalinten extends StatefulWidget {
  const prakhalinten({super.key});

  @override
  State<prakhalinten> createState() => _prakhalintenState();
}

class _prakhalintenState extends State<prakhalinten> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Halamanutama()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/image/jpeg', height: 130),
          ],
        ),
      ),
    );
  }
}