import 'dart:io';

void diamond(int x) {
  int k = x - 3;

  for (int i = 1; i < x + 1; i++) {
    for (int j = 0; j < k; j++) {
      stdout.write("*");
    }

    k = k - 1;

    if (i <= (x + 1) / 2) {
      for (int j = 0; j <= i - 1; j++) {
        if (i - 1 == j) {
          stdout.write("$i");
        } else {
          stdout.write("$i ");
        }
      }
    } else {
      // for (int j =0; j)
    }

    for (int j = 0; j < k; j++) {
      stdout.write("*");
    }

    stdout.write("\n");
  }
}

void mirror(int x) {
  int a = 1;
  int b = x;
  for (int i = 0; i < x; i++) {
    for (int j = 1; j <= x - i; j++) {
      stdout.write("$a");
      if (a < x) {
        a++;
      } else {
        a = 1;
      }
    }

    for (int j = 0; j < i * 2; j++) {
      stdout.write(" ");
    }

    for (int j = x; j > 0 + i; j--) {
      stdout.write("$b");
      if (b > 1) {
        b--;
      } else {
        b = 4;
      }
    }
    stdout.write("\n");
  }
}

void main(List<String> arguments) {
  stdout.write("Masukan angka: ");
  String? dtInput = stdin.readLineSync();
  int x = int.parse(dtInput!);

  // diamond(x);
  mirror(x);
}
