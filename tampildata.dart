import 'package:flutter/material.dart';

class tampildata extends StatefulWidget {
  const tampildata({super.key});

  @override
  State<tampildata> createState() => _tampildataState();
}

class _tampildataState extends State<tampildata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuis 1 WASIS RIFKY PAMUJI - 22SA11A236"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("tmapilkan data")),
            Text("Daftar nilai")
          ],
        ),
      ),
    );
  }
}
