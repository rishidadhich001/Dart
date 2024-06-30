import 'dart:io';

void main()
{
  int? age;
  stdout.write("enter the age: ");

  try{
    age=int.parse(stdin.readLineSync()!);
  }
  on FormatException
  {
    print("format exception caught");
  }
  catch(r)
  {
    print("value must be integer!");
  }
  finally
  {
    print(age??0);
  }
}