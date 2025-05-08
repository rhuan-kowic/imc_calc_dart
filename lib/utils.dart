import 'dart:convert';
import 'dart:io';

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line?.trim() ?? "";
}

double lerConsoleDouble(String texto) {
  return double.tryParse(lerConsole(texto)) ?? 0.0;
}
