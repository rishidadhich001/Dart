import 'dart:io';
int Sum([int a=0,int b=0])
{
  return a+b;
}
int Subtract([int a=0,int b=0])
{
  return a-b;
}
int Multiply([int a=0,int b=0])
{
  return a*b;
}
int Divide([int a=0,int b=0])
{
  return a+b;
}
int Module([int a=0,int b=0])
{
  return a%b;
}

void main()
{
  stdout.write("Enter the value of a:");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the value of b:");
  int b = int.parse(stdin.readLineSync()!);
  int z;
  do{
  stdout.write("enter 1 for + : \n");
  stdout.write("enter 2 for - : \n");
  stdout.write("enter 3 for * : \n");
  stdout.write("enter 4 for / : \n");
  stdout.write("enter 5 for % : \n");
  stdout.write("enter 0 for exit : \n");
  stdout.write("enter your choice : \n");
  z=int.parse(stdin.readLineSync()!);
  switch(z)
  {
    case 0:print("your are exit");
    break;
    case 1:print(Sum(a,b));
    break;
    case 2:print(Subtract( a,b));
    break;
    case 3:print(Multiply(a,b));
    break;
    case 4:print(Divide(a,b));
    break;
    case 5:print(Module(a,b));
    break;
    default:print("entre the valid input  : ");
  }
  }while(z!=0);
}