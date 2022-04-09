// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility that Flutter provides. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:flutter_1/main.dart';

// void main() {
//   // Tipe data dan variabel
//   // Variabel
//   var mahasiswa = "Daffi";
//   var umur = 20;

//   print("Nama: " + mahasiswa + ", Umur: " + umur.toString());

//   // String
//   String mahasiswaString;
//   mahasiswaString = "Daffi Fadillah";
//   String umurString;
//   umurString ="21";

//   print("Nama: " + mahasiswaString + ", Umur: "+ umurString);

//   // Integer
//   int semester;
//   semester = 4;

//   print("Semester: " + semester.toString());

//   // Double
//   double ipk;
//   ipk = 3.8;

//   print("IPK: " + ipk.toString());

//   // Boolean
//   bool benar = true;
//   bool salah = false;
//   bool tidakbenar = !true;
//   bool tidaksalah = !false;

//   // List
//   List jurusan = [
//     "Teknik Informatika", 
//     "Desain Komunikasi Visual", 
//     semester.toString(), 
//     ipk.toString()
//   ];

//   print(jurusan);

//   // Mapping
//   Map<String, dynamic> kelas = {
//     "Nama": "Daffi Fadillah",
//     "Kelas": "TI 1/4",
//     "Peminatan": "Intelligent System"
//   };

//   print(kelas);
//   print(kelas["Nama"]);
//   print(kelas["Kelas"]);
//   print(kelas["Peminatan"]);
  
//   // Operator
//   int d, f;
//   d = 50;
//   f = 5;
//   print("D = " + d.toString());
//   print("F = " + f.toString());

//   print(d + f);
//   print(d - f);
//   print(d / f);
//   print(d * f);
//   print(d > f);
//   print(d < f);
//   print(d >= f);
//   print(d <= f);

//   // conditional
//   print('Conditional');
//   var nilai;
//   nilai = 85;
  
//   if(nilai >= 90){
//     print('A');
//   }else if(nilai <= 90 && nilai >= 60){
//     print('B');
//   }else{
//     print('Tidak Lulus');
//   }
  
//   print('----------');
//   nilai >= 90 ? print('A') : print('Tidak A');

//   // pemanggilan function
//   print('Function');

//   hitungnilai();
//   hitungnilai1(75, 90);
//   var p = hitungnilai1(2, 50);
//   print(p);

//   var n = hitungnilai2(mapel1: 50, mapel2: 2);
//   print(n);

//   var o = hitungnilai3(79, 100);

//   //final keyword => imutable/tidak dapat diubah
//   //const final
  
//   //const
// //  const String mahasiswa = "Daffi";
  
//   //final
//   final String mahasiswafk;
  
//   mahasiswafk = "Fadillah";
  
//   print(mahasiswafk);
  
  
//   //null safety
//   // ? ! late
  
//   // ? digunakan dia boleh null
// //  String? jurusan;
  
//   //late untuk diisi nanti
//   late String jurusanns;
  
//   jurusanns = "Teknik Informatika";
// //  jurusan = "TI";
//   //memaksa untuk dijalankan !
//   print(jurusanns.length);

//   //perulangan looping
  
//   //for +
//   for(int no = 1; no <= 5; no++){
//     print(no);
//   }
  
//   //for -
//   for(int no = 5; no >= 1; no--){
//     print(no);
//   }
  
//   //while
//   int no1 = 1;
//   int no2 = 5;
//   while(no1 <= no2){
//     print(no1);
//     no1++;
//   }
  
//   //do while
//   int no3 = 1;
//   int no4 = 5;
//   do{
//     print(no3);
//     no3++;
//   }while(no3 <= no4);

// }

// // function
// hitungnilai() {
//   print('Hitung Nilai');
// }

// // positional argument
// hitungnilai1(mapel1, mapel2, [mapel3]) {
//   var nilaiakhir;
//   if (mapel3 != null) {
//     nilaiakhir = mapel1 / mapel2 + mapel3;
//   } else {
//     nilaiakhir = mapel1 / mapel2;
//   }
//   return nilaiakhir;
// }

// // name argument
// hitungnilai2({mapel1, mapel2}) {
//   var nilaiakhir;
//   if (mapel2 != null) {
//     nilaiakhir = mapel1 / mapel2;
//   } else {
//     nilaiakhir = mapel1;
//   }
//   return nilaiakhir;
// }

// // void
// void hitungnilai3(mapel1, mapel2) {
//   var nilaiakhir = mapel1 + mapel2;
//   print(nilaiakhir);
// }

//oop
//class

class Kendaraan {
  String? merk;
  String? tipe;
  int? harga;
  

  //constructor
  Kendaraan({this.merk, this.tipe, this.harga});
  
  //method
  maju(int kecepatan){
    print(kecepatan.toString() + " KM/jam");
  }
}

//inharitance / pewarisan
class Sedan extends Kendaraan{
  int? jumlahPintu;
  int? kecepatanMax;
  
  Sedan({String? merk, this.jumlahPintu, this.kecepatanMax}):super(merk: merk);
}

void main() {
  //instansiasi
  var k1 = Kendaraan(merk: "BMW", tipe: "Civic", harga: 50);

  k1.maju(60);
  k1.merk = "Toyota";
  print(k1.merk);
  print(k1.tipe);
  print(k1.harga);
  
  var k2 = Kendaraan(merk: "Mitsubishi", tipe: "Colt", harga: 80);

  k2.maju(40);
  print(k2.merk);
  print(k2.tipe);
  print(k2.harga);
  
  var s1 = Sedan(jumlahPintu: 4,kecepatanMax: 120, merk: "Honda");
  print("-----");
  print(s1.jumlahPintu);
  print(s1.kecepatanMax);
  print(s1.merk);
}
