void main() {
  List<List<int>> array2d = [];

  List<int> baris1 = [];
  for (int i = 1; i <= 4; i++) {
    baris1.add(6 * i);
  }

  List<int> baris2 = [];
  int bilGanjil = 3;
  for (int i = 1; i <= 5; i++) {
    baris2.add(bilGanjil);
    bilGanjil += 2;
  }

  List<int> baris3 = [];
  for (int i = 4; i <= 9; i++) {
    baris3.add(i * i * i);
  }

  List<int> baris4 = [];
  int nilai = 3;
  for (int i = 1; i <= 7; i++) {
    baris4.add(nilai);
    nilai += 7;
  }

  array2d.add(baris1);
  array2d.add(baris2);
  array2d.add(baris3);
  array2d.add(baris4);

  String output = "Isi List:";
  for (List<int> baris in array2d) {
    output += "\n";
    for (int nilai in baris) {
      output += "$nilai ";
    }
  }
  print(output);
}