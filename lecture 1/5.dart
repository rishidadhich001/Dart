
import 'dart:io';

void main()
{
  String temp;
  stdout.write("enter n1:");
  temp=(stdin.readLineSync()!);
  var n1=int.parse(temp);

  stdout.write("enter n2:");
  temp=(stdin.readLineSync()!);
  var n2=int.parse(temp);
  for(var i=n1;i<=n2;i++)
  {
    for(int j=1;j<=10;j++)
    {
      print("$i*$j=${i*j}");
    }
    print(" ");
  }
}