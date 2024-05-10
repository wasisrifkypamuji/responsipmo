import 'package:flutter/material.dart';
import 'package:responsi/nilaiMahasiswa.dart';
import 'package:responsi/tampildata.dart';

String? kelasdipilih;

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

  TextEditingController nilaiteoric = TextEditingController();
  TextEditingController nilaipraktekc = TextEditingController();
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
              controller: nimc,
              decoration: InputDecoration(
                  label: Text("NOMOR INDUK MAHASISWA"),
                  border: OutlineInputBorder()),
            ),
            TextField(
              controller: namac,
              decoration: InputDecoration(
                  label: Text("nama mahasiswa"), border: OutlineInputBorder()),
            ),
            Expanded(
                child: DropdownButton(
              hint: Text("Silahkan Pilih kelas"),
              value: kelasdipilih,
              items: kelaslist
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  kelasdipilih = value;
                });
              },
            )),
            TextField(
              controller: nilaiteoric,
              decoration: InputDecoration(
                  label: Text("nilai teori"), border: OutlineInputBorder()),
            ),
            TextField(
              controller: nilaipraktekc,
              decoration: InputDecoration(
                  label: Text("nilai praktik"), border: OutlineInputBorder()),
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilaiMahsiswamodel nialimahasiswa = nilaiMahsiswamodel(
                          context,
                          nimc.text,
                          namac.text,
                          kelasdipilih.toString(),
                          double.parse(nilaiteoric.text),
                          double.parse(nilaipraktekc.text),
                        );
                        nialimahasiswa.grade();
                        nilaimahaslist.add(nialimahasiswa);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tampildata(),
                            ));
                      });
                    },
                    child: Text("simpan")))
          ],
        ),
      ),
    );
  }
}
