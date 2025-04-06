class Data {
  int nilai;
  int indeksAsli;

  Data(this.nilai, this.indeksAsli);
}
int binarySearch(List<Data> data, int key) {
  int kiri = 0;
  int kanan = data.length - 1;

  while (kiri <= kanan) {
    int tengah = (kiri + kanan) ~/ 2;
    if (data[tengah].nilai == key) {
      return data[tengah].indeksAsli;
    } else if (data[tengah].nilai < key) {
      kiri = tengah + 1;
    } else {
      kanan = tengah - 1;
    }
  }
return -1;
}
void main() {
  List<int> nilaiAsli = [25, 10, 30, 20, 15];
  int key = 20;

  // Buat list berisi nilai dan indeks aslinya
  List<Data> data = List.generate(
    nilaiAsli.length,
    (i) => Data(nilaiAsli[i], i),
  );

  // Urutkan berdasarkan nilai
  data.sort((a, b) => a.nilai.compareTo(b.nilai));

  int hasil = binarySearch(data, key);
  if (hasil != -1) {
    print("Data $key ditemukan pada indeks asli ke-$hasil");
  } else {
    print("Data $key tidak ditemukan.");
  }
}
