import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukan angka: ");
  String? dtInput = stdin.readLineSync();
  int angka = int.parse(dtInput!);

  print(dtInput);
}
