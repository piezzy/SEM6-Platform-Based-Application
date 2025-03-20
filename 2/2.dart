void main() {
  int bil1 = 12;
  int bil2 = 8;
  int hasil = fpb(bil1, bil2);
  print("FPB \nBilangan 1: $bil1 \nBilangan 2: $bil2 \nFPB $bil1 dan $bil2 = $hasil \n");
}

int fpb(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}