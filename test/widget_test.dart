// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_1/main.dart';

void main() {
  // Tipe data dan variabel
  // Variabel
  var mahasiswa = "Daffi";
  var umur = 20;

  print("Nama: " + mahasiswa + ", Umur: " + umur.toString());

  // String
  String mahasiswaString;
  mahasiswaString = "Daffi Fadillah";
  String umurString;
  umurString ="21";

  print("Nama: " + mahasiswaString + ", Umur: "+ umurString);

  // Integer
  int semester;
  semester = 4;

  print("Semester: " + semester.toString());

  // Double
  double ipk;
  ipk = 3.8;

  print("IPK: " + ipk.toString());

  // Boolean
  bool benar = true;
  bool salah = false;
  bool tidakbenar = !true;
  bool tidaksalah = !false;

  // List
  List jurusan = [
    "Teknik Informatika", 
    "Desain Komunikasi Visual", 
    semester.toString(), 
    ipk.toString()
  ];

  print(jurusan);

  // Mapping
  Map<String, dynamic> kelas = {
    "Nama": "Daffi Fadillah",
    "Kelas": "TI 1/4",
    "Peminatan": "Intelligent System"
  };

  print(kelas);
  print(kelas["Nama"]);
  print(kelas["Kelas"]);
  print(kelas["Peminatan"]);
  
  // Operator
  int d, f;
  d = 50;
  f = 5;
  print("D = " + d.toString());
  print("F = " + f.toString());

  print(d + f);
  print(d - f);
  print(d / f);
  print(d * f);
  print(d > f);
  print(d < f);
  print(d >= f);
  print(d <= f);

  // conditional
  print('Conditional');
  var nilai;
  nilai = 85;
  
  if(nilai >= 90){
    print('A');
  }else if(nilai <= 90 && nilai >= 60){
    print('B');
  }else{
    print('Tidak Lulus');
  }
  
  print('----------');
  nilai >= 90 ? print('A') : print('Tidak A');

  // pemanggilan function
  print('Function');

  hitungnilai();
  hitungnilai1(75, 90);
  var p = hitungnilai1(2, 50);
  print(p);

  var n = hitungnilai2(mapel1: 50, mapel2: 2);
  print(n);

  var o = hitungnilai3(79, 100);
}

// function
hitungnilai() {
  print('Hitung Nilai');
}

// positional argument
hitungnilai1(mapel1, mapel2, [mapel3]) {
  var nilaiakhir;
  if (mapel3 != null) {
    nilaiakhir = mapel1 / mapel2 + mapel3;
  } else {
    nilaiakhir = mapel1 / mapel2;
  }
  return nilaiakhir;
}

// name argument
hitungnilai2({mapel1, mapel2}) {
  var nilaiakhir;
  if (mapel2 != null) {
    nilaiakhir = mapel1 / mapel2;
  } else {
    nilaiakhir = mapel1;
  }
  return nilaiakhir;
}

// void
void hitungnilai3(mapel1, mapel2) {
  var nilaiakhir = mapel1 + mapel2;
  print(nilaiakhir);
}
