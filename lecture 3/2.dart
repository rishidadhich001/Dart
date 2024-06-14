import 'dart:io';

void main()
{
  stdout.write("Enter total length: ");
  int length = int.parse(stdin.readLineSync()!);

  List list1 = [];

  for (int i = 0; i < length; i++) {
    stdout.write("Enter name : ");
    list1.add(stdin.readLineSync()!);
  }

  list1 = list1.toSet().toList();

  print(list1);
}