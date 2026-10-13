import 'dart:io';
void main(){
    bool jalan = true;
    List<Map> listgudang = [
    {'nama': 'Gudang A', 'barang': <Map>[]},
    {'nama': 'Gudang B', 'barang': <Map>[]},
    {'nama': 'Gudang C', 'barang': <Map>[]},
    {'nama': 'Gudang D', 'barang': <Map>[]},
    ];
    
 tambahbarang() {
  
    stdout.write('Pilih Gudang (A/B/C/D): ');
    String pilih = stdin.readLineSync()!;
    Map? gudang;
 if (pilih == 'A') {
      gudang = listgudang[0];
  } else if (pilih == 'B') {
    gudang = listgudang[1];
  } else if (pilih == 'C') {
    gudang = listgudang[2];
  } else if (pilih == 'D') {
    gudang = listgudang[3];;
  } else {
    print('Pilihan tidak Valid');
    return null;
  }

        stdout.write('Masukkan Nama Barang: ');
        var nama = stdin.readLineSync() ?? ''; 

        stdout.write('Masukkan Harga Barang: ');
        int harga = int.parse(stdin.readLineSync() ?? '');
        
        stdout.write('Masukkan Stock Barang: ');
        int stok = int.parse(stdin.readLineSync() ?? '');

    List baranglist = gudang['barang'];
        baranglist.add({
            'nama': nama,
            'harga': harga,
            'stok': stok
        });
        
    print('Barang berhasil ditambahkan!');

    }
// pilihgudang() {
//     stdout.write('Pilih Gudang (A/B/C/D): ');
//     String pilih = stdin.readLineSync()!;

//     if (pilih == 'A') {
//       tambahbarang(listgudang[1]);
//   } else if (pilih == 'B') {
//     tambahbarang(listgudang[2]);
//   } else if (pilih == 'C') {
//     tambahbarang(listgudang[3]);
//   } else if (pilih == 'D') {
//     tambahbarang(listgudang[4]);
//   } else {
//     print('Pilihan tidak Valid');
//     return null;
//   }
//         // simpan nama barang
//         // harga barang
//         // jumlah stock
//     }

   lihatstok() {
stdout.write('Pilih Gudang (A/B/C/D): ');
    String pilih = stdin.readLineSync()!;
    Map? gudang;
if (pilih == 'A') {
      gudang = listgudang[0];
  } else if (pilih == 'B') {
    gudang = listgudang[1];
  } else if (pilih == 'C') {
    gudang = listgudang[2];
  } else if (pilih == 'D') {
    gudang = listgudang[3];
  } else {
    print('Pilihan tidak Valid');
  }

    List baranglist = gudang?['barang'];

    print('\nDaftar Barang ${gudang?['nama']}');

    if (baranglist.isEmpty) {
      print('Gudang masih kosong.');
    } else {
      for (var i = 0; i < baranglist.length; i++) {
        print(
          '${i + 1}. ${baranglist[i]['nama']} | '
          'Harga: ${baranglist[i]['harga']} | '
          'Stok: ${baranglist[i]['stok']}'
        );
      }
  }

    
    }
    ubahbarang(){
stdout.write('Pilih Gudang (A/B/C/D): ');
    String pilih = stdin.readLineSync()!;
    Map? gudang;
if (pilih == 'A') {
      gudang = listgudang[0];
  } else if (pilih == 'B') {
    gudang = listgudang[1];
  } else if (pilih == 'C') {
    gudang = listgudang[2];
  } else if (pilih == 'D') {
    gudang = listgudang[3];
  } else {
    print('Pilihan tidak Valid');
  }
  
  List baranglist = gudang?['barang'];
  if (baranglist.isEmpty) {
    print('Gudang Masih Kosong');
  }
  for (var i = 0; i < baranglist.length; i++) {
    print('${i + 1}. ${baranglist[i]['nama']} | Harga: ${baranglist[i]['harga']} | Stok: ${baranglist[i]['stok']} ');
  }
stdout.write('Pilih nomor barang yang ingin diubah : ');
    int pilihbarang = int.parse(stdin.readLineSync()!);

    if (pilihbarang < 1 || pilihbarang > baranglist.length) {
      print('Nomor barang tidak valid');
    }
   stdout.write('Masukkan Nama Barang Baru: ');
  String nama = stdin.readLineSync()!;

  stdout.write('Masukkan Harga Baru: ');
  int harga = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan Stok Baru: ');
  int stok = int.parse(stdin.readLineSync()!);

  baranglist[pilihbarang - 1]['nama'] = nama;
  baranglist[pilihbarang - 1]['harga'] = harga;
  baranglist[pilihbarang - 1]['stok'] = stok;

  print('Barang berhasil diubah!');
    }

    hapusbarang(){
stdout.write('Pilih Gudang (A/B/C/D): ');
    String pilih = stdin.readLineSync()!;
    Map? gudang;
if (pilih == 'A') {
      gudang = listgudang[0];
  } else if (pilih == 'B') {
    gudang = listgudang[1];
  } else if (pilih == 'C') {
    gudang = listgudang[2];
  } else if (pilih == 'D') {
    gudang = listgudang[3];
  } else {
    print('Pilihan tidak Valid');
  }
  
  List baranglist = gudang?['barang'];
  if (baranglist.isEmpty) {
    print('Gudang Masih Kosong');
  }
  for (var i = 0; i < baranglist.length; i++) {
    print('$i+1. ${baranglist[i]['nama']} | Harga: ${baranglist[i]['harga']} | Stok: ${baranglist[i]['stok']} ');
  }
stdout.write('Pilih nomor barang yang ingin dihapus : ');
    int pilihbarang = int.parse(stdin.readLineSync()!);

    if (pilihbarang < 1 || pilihbarang > baranglist.length) {
      print('Nomor barang tidak valid');
    } else {
      baranglist.removeAt(pilihbarang - 1);
    }
      print('Barang berhasil dihapus!');
    }



    while (jalan == true) {
    print('\n===== SISTEM GUDANG =====');
    print('1. Pilih Gudang dan Tambah Barang');
    print('2. Lihat Stok Gudang');
    print('3. Ubah Barang');
    print('4. Hapus Barang');
    print('0. Keluar');

    stdout.write('Pilih Menu (0/1/2/3/4): ');
    int pilih = int.parse(stdin.readLineSync()!);
    switch (pilih) {
        case 1 :
        tambahbarang();
        case 2 :
        lihatstok();
        case 3 :
        ubahbarang();
        case 4 :
        hapusbarang();
        case 0 :
        exit(0);
    }
    }
}