import 'dart:io';

void main()
{
  List l1=[1,2,3,4,5,6];
  int x;
  do
  {
    stdout.write("\nEnter 1 to insert : \n");
  stdout.write("Enter 2 to delete : \n");
  stdout.write("Enter 3 to update : \n");
  stdout.write("Enter 4 to view all : \n");
  stdout.write("Enter 0 exit : \n");
  stdout.write("Enter your choice : ");
   x=int.parse(stdin.readLineSync()!);
  switch(x)
  {
     case 1:print("Enter the value of add : ");
          int a=int.parse(stdin.readLineSync()!);
          l1.add(a);
      break;
    case 2:print("Enter the index number to remove  value : ");
          int a=int.parse(stdin.readLineSync()!);
          l1.removeAt(a);
    break;
    case 3:print("Enter the index number  : ");
          int a=int.parse(stdin.readLineSync()!);
          print("Enter the index number  : ");
          int b=int.parse(stdin.readLineSync()!);
          l1.insert(a,b);
    break;
    case 4:print(l1);
    break;
    case 0:print("You Exit : ");
    
    default:print("Enter the valid input : ");

  }
  }while(x!=0);
}