import 'dart:io';

void main()
{
  stdout.write("enter the value of n:");
  int n = int.parse(stdin.readLineSync()!);
  for(int i=0;i<=10;i++)
  {
    print("$n*$i=${n*i}");
  }
}