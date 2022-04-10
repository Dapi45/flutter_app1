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
