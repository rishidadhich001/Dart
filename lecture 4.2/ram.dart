import 'dart:io';
class Employee{
  int? id;
  String? name,destignation;
  double?  salary;
}

class Train{
  late int Train_Number,n;
  late String Train_name,Train_time;
  late String source,designation;

  void set()
  {
    stdout.write("\n\n enter the detail of Train:\n");
    stdout.write("enter the Train Number:");
    Train_Number=int.parse(stdin.readLineSync()!);
    stdout.write("enter the Train Name:");
    Train_name=stdin.readLineSync()!;
    stdout.write("enter the Train Time:");
    Train_time=stdin.readLineSync()!;
    stdout.write("enter the Train source:");
    source=stdin.readLineSync()!;
    stdout.write("enter the Train designation:");
    designation=stdin.readLineSync()!;
  }
  void get()
  {
    print("Train Number:${Train_Number}\n");
    print("Train Name:${Train_name}\n");
    print("Train Time:${Train_time}\n");
    print("Train Source:${source}\n");
    print("Train designation:${designation}\n");
  }
  void choice()
  {
    stdout.write("1 for all train records:\n");
    stdout.write("2 for enter train number to find specific train:\n");
    stdout.write("3 for Exit: \n");  
    stdout.write("enter your choice: \n");
    n=int.parse(stdin.readLineSync()!);  
  }
}

class Super_market
{
  late int item_number,n,Quantity,
  Tax,check=0;
  late double Discount;
  late String item_name,password,username;
  int Verify()
  {
    stdout.write("\nenter the user name:");
    username=stdin.readLineSync()!;

    stdout.write("enter the password:");
    password=stdin.readLineSync()!;
    if(username=="Rishi"&&password=="0109")
    {
      print("Login successfull:");
      return check=1;
    }
    else 
    {
      return check=0;
    }
  }
  void Productinput()
  {
    stdout.write("enter the detail of Supermarket prouct:\n");
    stdout.write("enter the item number:");
    item_number=int.parse(stdin.readLineSync()!);
    stdout.write("enter the quantity:");
    Quantity=int.parse(stdin.readLineSync()!);
    stdout.write("enter the tax:");
    Tax=int.parse(stdin.readLineSync()!);
    stdout.write("enter the discount:");
    Discount=double.parse(stdin.readLineSync()!);
    stdout.write("enter the item name:");
    item_name=stdin.readLineSync()!;
  }
  void Productoutput()
  {
    print("item number:${item_number}\n");
    print("item name:${item_name}\n");
    print("Quantity:${Quantity}\n");
    print("Tax:${Tax}\n");
    print("Discount:${Discount}\n");
  }
  void service()
  {
    stdout.write("1 for Search items number  : \n");
    stdout.write("2 for All Product Records : \n");
    stdout.write("3 for Exit : \n");
    stdout.write("Enter your choice : \n");
    n=int.parse(stdin.readLineSync()!); 
  }
  
}