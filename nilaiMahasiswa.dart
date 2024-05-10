import 'package:flutter/material.dart';

class nilaiMahsiswamodel {
  BuildContext context;
  String nim = "";
  String nama = "";
  String kelas = "";
  double nilaiteori = 0;
  double nilaipraktek = 0;
  String nilaihuruf = "";
  double nilaitotal = 0;

  nilaiMahsiswamodel(
    this.context,
    this.nim,
    this.nama,
    this.kelas,
    this.nilaiteori,
    this.nilaipraktek,
  );

  double get getnilaiteori {
    return nilaiteori;
  }

  double get getnilaipraktek {
    return nilaipraktek;
  }

  double get getnialitotal {
    return nilaiteori + nilaipraktek;
  }

  void grade() {
    if (getnialitotal >= 80) {
      nilaihuruf = "A";
    } else if (getnialitotal >= 70) {
      nilaihuruf = "B";
    } else if (getnialitotal >= 70) {
      nilaihuruf = "c";
    } else if (getnialitotal >= 60) {
      nilaihuruf = "d";
    } else {
      nilaihuruf = "e";
    }
  }
}

List<nilaiMahsiswamodel> nilaimahaslist = [];
