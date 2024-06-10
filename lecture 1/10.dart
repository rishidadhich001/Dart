import 'dart:io';

void main()
{
  stdout.write("enter a value of n:");
  int n = int.parse(stdin.readLineSync()!);
  (n % 2 == 0) ? print("Even number $n") : print("Odd number $n");
}