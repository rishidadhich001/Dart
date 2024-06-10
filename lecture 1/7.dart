import 'dart:io';

void main()
{
  String firstname;
  String lastname;
  
  stdout.write("enter a value of firstname:");
  firstname = (stdin.readLineSync()!);

  stdout.write("enter a value of lastname:");
  lastname=(stdin.readLineSync()!);
  print(firstname+" "+lastname);
}