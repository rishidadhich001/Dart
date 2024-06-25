import 'dart:io';
int Sum([int a=0,int b=0])
{
  return a+b;
}
void main()
{
  stdout.write("Enter the value of a:");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the value of b:");
  int b = int.parse(stdin.readLineSync()!);
  print(Sum(a,b));
}