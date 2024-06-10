import 'dart:io';

void main()
{
  String temp;
  stdout.write("enter a value of principal:");
  temp=(stdin.readLineSync()!);
  var p=int.parse(temp);

  stdout.write("enter a value of rateof intrest:");
  temp=(stdin.readLineSync()!);
  var r=int.parse(temp);

  stdout.write("entera value of time:");
  temp=(stdin.readLineSync()!);
  var t=int.parse(temp);

  print("simple interest=${(p*r*t)/100}");
}