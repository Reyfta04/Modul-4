void sequentialSearchAll(List<int> data, int key) {
  bool ditemukan = false;

  for (int i = 0; i < data.length; i++) {
    if (data[i] == key) {
      print("Data $key ditemukan pada indeks ke-$i");
      ditemukan = true;
    }
  }

  if (!ditemukan) {
    print("Data $key tidak ditemukan dalam array.");
  }
}

void main() {
  List<int> data = [5, 7, 3, 7, 9, 7, 1];
  int key = 7;

  sequentialSearchAll(data, key);
}
