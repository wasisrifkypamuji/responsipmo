import 'package:flutter/material.dart';
import 'package:responsi/nilaiMahasiswa.dart';

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
            Text("Daftar nilai"),
            Expanded(
              child: ListView.builder(
                itemCount: nilaimahaslist.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(nilaimahaslist[index].nama),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nilaimahaslist[index].nim),
                        Text(nilaimahaslist[index].kelas),
                        Text(nilaimahaslist[index].nilaiteori.toString()),
                        Text(nilaimahaslist[index].nilaipraktek.toString()),
                        Text(nilaimahaslist[index].nilaihuruf.toString()),
                        Text()
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
