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

  String output = " Isi List:";
  for (List<int> baris in array2d) {
    output += "\n";
    for (int nilai in baris) {
      output += " $nilai";
    }
  }
  print(output);

  int bil1 = 12;
  int bil2 = 8;
  int hasil = fpb(bil1, bil2);
  print(" \n FPB \n Bilangan 1: $bil1 \n Bilangan 2: $bil2 \n FPB $bil1 dan $bil2 = $hasil \n");
}


int fpb(int a, int b) {

  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}