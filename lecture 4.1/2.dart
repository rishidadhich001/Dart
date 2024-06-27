import 'dart:io';
List ram(List r1)=>r1.toSet().toList();
void main()
{
  List<String>r1=[];
  stdout.write("enter a number of name :");
  int a=int.parse(stdin.readLineSync()!);

  for(int i=0;i<a;i++)
  {
    stdout.write("enter a name:");
    r1.add(stdin.readLineSync()!);
  }
  print(ram(r1));
}