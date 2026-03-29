class Restoran {
  String? nama;
  int? tahunDidirikan;
  String? pemilik;
  String? alamat;
  String? statusBuka;
  List<Map<String, dynamic>> daftarMakanan = [];
  List<Map<String, dynamic>> daftarMinuman = [];

  void tampilkanInfo() {
    print("============================================");
    print("             INFORMASI RESTORAN             ");
    print("============================================");
    print("Nama Restoran   : $nama");
    print("Status Buka     : $statusBuka");
    print("Alamat          : $alamat");
    print("Tahun Didirikan : $tahunDidirikan");
    print("Pemilik         : $pemilik");

    print("\n--------------------------------------------");
    print("               DAFTAR MAKANAN               ");
    print("--------------------------------------------");
    if (daftarMakanan.isEmpty) {
      print("Belum ada menu makanan.");
    } else {
      for (var i = 0; i < daftarMakanan.length; i++) {
        var menu = daftarMakanan[i];
        print(
          "${i + 1}. ${menu['nama'].toString().padRight(15)} : Rp ${menu['harga']}",
        );
      }
    }

    print("\n--------------------------------------------");
    print("               DAFTAR MINUMAN               ");
    print("--------------------------------------------");
    if (daftarMinuman.isEmpty) {
      print("Belum ada menu minuman.");
    } else {
      for (var i = 0; i < daftarMinuman.length; i++) {
        var menu = daftarMinuman[i];
        print(
          "${i + 1}. ${menu['nama'].toString().padRight(15)} : Rp ${menu['harga']}",
        );
      }
    }
    print("============================================\n");
  }
}

void main() {
  var restoran1 = Restoran();
  restoran1.nama = "Electra Seafood";
  restoran1.tahunDidirikan = 2023;
  restoran1.pemilik = "Mbok Yem";
  restoran1.alamat = "JL. Prof. Soedarto, SH, Tembalang";
  restoran1.statusBuka = "Buka";

  restoran1.daftarMakanan = [
    {"nama": "Kepiting Rebus", "harga": 40000},
    {"nama": "Nasi Goreng", "harga": 20000},
    {"nama": "Udang Asam Manis", "harga": 50000},
    {"nama": "Sate Cumi", "harga": 30000},
  ];

  restoran1.daftarMinuman = [
    {"nama": "Es Jeruk", "harga": 5000},
    {"nama": "Es Teh", "harga": 3000},
    {"nama": "Jus", "harga": 6000},
  ];

  restoran1.tampilkanInfo();
}
