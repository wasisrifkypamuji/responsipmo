import 'package:flutter/material.dart';

class datamhs extends StatefulWidget {
  const datamhs({super.key});

  @override
  State<datamhs> createState() => _datamhsState();
}

class _datamhsState extends State<datamhs> {
  List<String> kelaslist = [
    "1",
    "2",
    "3",
    "4",
  ];
  TextEditingController nimc = TextEditingController();
  TextEditingController namac = TextEditingController();
  TextEditingController kelasc = TextEditingController();
  TextEditingController nilaiteoric = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuis 1 WASIS RIFKY PAMUJI - 22SA11A236"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              controller: namac,
              decoration: InputDecoration(
                  label: Text("NOMOR INDUK MAHASISWA"),
                  border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            TextField(
              controller: namac,
              decoration: InputDecoration(
                  label: Text("nama mahasiswa"), border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            TextField(
              controller: namac,
              decoration: InputDecoration(
                  label: Text("nilai teori"), border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            TextField(
              controller: namac,
              decoration: InputDecoration(
                  label: Text("nilai praktik"), border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
