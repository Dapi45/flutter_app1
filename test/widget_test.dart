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

// //oop
// //class

// class Kendaraan {
//   String? merk;
//   String? tipe;
//   int? kecepatan;

//   //constructor
//   Kendaraan({this.merk, this.tipe, this.kecepatan});

//   //method
//   maju(int tambahKecepatan) {
//     kecepatan = kecepatan! + tambahKecepatan;
//   }
// }

// //inharitance / pewarisan
// class Sedan extends Kendaraan {
//   int? jumlahPintu;
//   int? kecepatanMax;

//   Sedan({String? merk, this.jumlahPintu, this.kecepatanMax})
//       : super(merk: merk);
// }

// void main() {
//   //instansiasi
//   var k1 = Kendaraan(merk: "BMW", tipe: "Civic", kecepatan: 50);

//   //  k1.maju(60);
//   k1.merk = "Toyota";
//   print(k1.merk);
//   print(k1.tipe);
//   print(k1.kecepatan);

//   var k2 = Kendaraan(merk: "Mitsubishi", tipe: "Colt", kecepatan: 80);

//   k2.maju(40);
//   print(k2.merk);
//   print(k2.tipe);
//   print(k2.kecepatan);

//   var s1 = Sedan(jumlahPintu: 4, kecepatanMax: 120, merk: "Honda");
//   print("-----");
//   print(s1.jumlahPintu);
//   print(s1.kecepatanMax);
//   print(s1.merk);
// }

class Sepakbola {
  String? nama;
  int? pemain;
  int? durasi;

  Sepakbola({this.nama, this.pemain, this.durasi});
}

class Pemain extends Sepakbola {
  int? cadangan;

  Pemain({int? pemain, this.cadangan}) : super(pemain: pemain);
}

class Durasi extends Sepakbola {
  int? babak;
  int? waterbreak;

  Durasi({this.babak, int? durasi, this.waterbreak})
      : super(durasi: babak! * 2);

  tambah(int tambahDurasi) {
    durasi = durasi! + tambahDurasi;
    print("Dapat diberikan durasi tambahan $tambahDurasi menit");
    print("Durasi total menjadi $durasi menit");
  }
}

class Basket {
  String? nama;
  int? pemain;
  int? durasi;
  int? babak;

  Basket({this.nama, this.pemain, this.durasi, this.babak});
}

class Lapangan extends Basket {
  double? panjang;
  double? lebar;

  Lapangan({String? nama, this.panjang, this.lebar}) : super(nama: nama);
}

class DurasiB extends Basket {
  int? istirahat;

  DurasiB({int? durasi, this.istirahat}) : super(durasi: durasi);
}


void main() {
  var s1 = Sepakbola(nama: "Sepakbola", pemain: 11, durasi: 90);
  print("Pertandingan ${s1.nama} dimainkan oleh ${s1.pemain} orang dengan durasi ${s1.durasi} menit\n");

  var p1 = Pemain(pemain: 11, cadangan: 3);
  print("Pemain utama berjumlah ${p1.pemain} orang dan cadangan berjumlah ${p1.cadangan} orang\n");

  var d1 = Durasi(babak: 45, waterbreak: 15);
  print("Pertandingan berdurasi ${d1.durasi} menit");
  print("Terdapat waterbreak ${d1.waterbreak} menit setelah ${d1.babak} menit berlangsung\n");
  d1.tambah(30);

  print("---------");

  var b1 = Basket(nama: "Basketball", pemain: 5, durasi: 10, babak: 4);
  print("Pertandingan ${b1.nama} dimainkan oleh ${b1.pemain} orang per tim dengan durasi ${b1.babak} x ${b1.durasi} menit\n");

  var db1 = DurasiB(durasi: 10, istirahat: 10);
  print("Setiap 1 babak (${db1.durasi} menit) berakhir, terdapat waktu istirahat selama ${db1.istirahat} menit\n");
  
  var l1 = Lapangan(nama: "Basketball", panjang: 28, lebar: 15);
  print("Pertandingan ${l1.nama} dilakukan pada lapangan berukuran ${l1.panjang} x ${l1.lebar} meter");
}
