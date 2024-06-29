import 'dart:io';
void main()
{
  stdout.write("enter the inches:");
  int a =int.parse(stdin.readLineSync()!);
  stdout.write("enter the feet:");
  int b =int.parse(stdin.readLineSync()!);
  double sum=0;
  sum=b+(a/12);
  a=a%12;
  print("Feet${sum.toInt()}");
  print("Inches $a");
}