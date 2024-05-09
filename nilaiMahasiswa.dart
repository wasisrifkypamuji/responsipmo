import 'package:flutter/material.dart';

class nilaiMahsiswamodel {
  BuildContext context;
  String nim = "";
  String nama = "";
  String kelas = "";
  double nilaiteori = 0;
  double nilaipraktek = 0;
  double totalnilai = 0;
  String nilaihuruf = "";

  set nilaitot(nilaitotal) {
    nilaitot = nilaitotal;
  }

  set nilaih(nilaihuruf) {
    nilaih = nilaihuruf;
  }

  nilaiMahsiswamodel(
    this.context,
    this.nim,
    this.nama,
    this.kelas,
    this.nilaiteori,
    this.nilaipraktek,
    this.totalnilai,
  );
  void hitung() {
    double totalnilai;
    totalnilai = nilaipraktek + nilaiteori;

    if (totalnilai >= 80) {}
  }
}

List<nilaiMahsiswamodel> nilaimahaslist = [];
