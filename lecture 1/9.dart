import 'dart:io';

void main() {
  String temp;
  stdout.write("Enter your value : ");
  temp = stdin.readLineSync()!;
  var a = int.parse(temp);
  stdout.write("Enter your value : ");
  temp = stdin.readLineSync()!;
  var b = int.parse(temp);

  stdout.write("Enter + - * / % : ");
  temp = stdin.readLineSync()!;

  switch (temp) {
    case '+':
      print("a + b = ${a + b}");
      break;
    case '-':
      print("a - b = ${a - b}");
      break;
    case '*':
      print("a * b = ${a * b}");
      break;
    case '/':
      print("a / b = ${a / b}");
      break;
    case '%':
      print("a % b = ${a % b}");
      break;
    default:
      print("Enter only + - * / %");
  }
}