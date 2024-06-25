import 'dart:io';
double Sum([int a=0,int b=0,int c=0,int d=0,int e=0])
 {
      double sum=((a+b+c+d+e)/500)*100;
    return sum;
 }
void main()
{
  stdout.write("enter the mark of english : ");
  int a=int.parse(stdin.readLineSync()!);
  stdout.write("enter the mark of math : ");
  int b=int.parse(stdin.readLineSync()!);
  stdout.write("enter the mark of Science : ");
  int c=int.parse(stdin.readLineSync()!);
  stdout.write("enter the mark of Computer : ");
  int d=int.parse(stdin.readLineSync()!);
  stdout.write("enter the mark of Physic : ");
  int e=int.parse(stdin.readLineSync()!);
  print(Sum(a,b,c,d,e));
}