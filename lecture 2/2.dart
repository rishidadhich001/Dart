import 'dart:io';

void main()
{
  List l1=[];
  stdout.write("enter a size of list:");
  int x=int.parse(stdin.readLineSync()!);

  for(int i=0;i<x;i++)
  {
    stdout.write("enter the element ${[i]}:");
    l1.add(stdin.readLineSync()!);
  }
  print(l1);
}