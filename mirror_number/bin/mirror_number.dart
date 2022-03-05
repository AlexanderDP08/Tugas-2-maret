import 'dart:io';

void diamond(int x) {
  double k = x / 2;
  int half2 = k.toInt(); //2
  int half = x - half2; //3
  int temp = 0;
  int temp2 = half2;
  int star1 = half; //3
  int star2 = half2; //2
  int a = 1;
  int b = 0;

  print(half);
  for (int i = 0; i < half; i++) {
    for (int j = 1; j < star1; j++) {
      stdout.write("*");
    }

    for (int j = 0; j <= i; j++) {
      if (temp == j) {
        stdout.write("$a");
        temp++;
        a++;
        if (a == 10) {
          a = 1;
          b = a;
        } else {
          b = a;
        }
      } else {
        stdout.write("$a ");
      }
    }

    for (int j = 1; j < star1; j++) {
      stdout.write("*");
    }

    star1--;

    stdout.write("\n");
  }

  for (int i = 0; i < half2; i++) {
    for (int j = star2; j <= half2; j++) {
      stdout.write("*");
    }

    for (int j = i; j < half2; j++) {
      if (temp2 - 1 == j) {
        stdout.write("$b");
        temp--;
        b++;
        if (b == 10) {
          b = 1;
        }
      } else {
        stdout.write("$b ");
      }
    }

    for (int j = star2; j <= half2; j++) {
      stdout.write("*");
    }

    star2--;

    stdout.write("\n");
  }
}

void mirror(int x) {
  int a = 1;
  int b = x;
  for (int i = 0; i < x; i++) {
    for (int j = 1; j <= x - i; j++) {
      stdout.write("$a");
      if (a < x && a != 9) {
        a++;
      } else {
        a = 1;
      }
    }

    for (int j = 0; j < i * 2; j++) {
      stdout.write(" ");
    }

    for (int j = x; j > 0 + i; j--) {
      if (b > 9) {
        b = 1;
      }
      stdout.write("$b");
      if (b > 1) {
        b--;
      } else {
        if (x > 9) {
          b = 9;
        } else {
          b = x;
        }
      }
    }

    stdout.write("\n");
  }
}

void main(List<String> arguments) {
  stdout.write("Masukan angka: ");
  String? dtInput = stdin.readLineSync();
  int x = int.parse(dtInput!);

  if (x % 2 == 0) {
    x = x - 1;
    diamond(x);
  } else if (x < 3) {
    stdout.write("Nilai tidak boleh lebih kecil dari 3..");
  } else {
    diamond(x);
  }
  // mirror(x);
}
