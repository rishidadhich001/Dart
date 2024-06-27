import 'dart:io';

class Super_market
{
  late int _item_number,_n,_Quantity,
  _Tax,check=0;
  late double _Discount;
  late String _item_name,_password,_username;
  int Verify()
  {
    stdout.write("\nenter the user name:");
    _username=stdin.readLineSync()!;

    stdout.write("enter the password:");
    _password=stdin.readLineSync()!;
    if(_username=="Rishi"&&_password=="0109")
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
    _item_number=int.parse(stdin.readLineSync()!);
    stdout.write("enter the quantity:");
    _Quantity=int.parse(stdin.readLineSync()!);
    stdout.write("enter the tax:");
    _Tax=int.parse(stdin.readLineSync()!);
    stdout.write("enter the discount:");
    _Discount=double.parse(stdin.readLineSync()!);
    stdout.write("enter the item name:");
    _item_name=stdin.readLineSync()!;
  }
  void Productoutput()
  {
    print("item number:${_item_number}\n");
    print("item name:${_item_name}\n");
    print("Quantity:${_Quantity}\n");
    print("Tax:${_Tax}\n");
    print("Discount:${_Discount}\n");
  }
  void service()
  {
    stdout.write("1 for Search items number  : \n");
    stdout.write("2 for All Product Records : \n");
    stdout.write("3 for Exit : \n");
    stdout.write("Enter your choice : \n");
    _n=int.parse(stdin.readLineSync()!); 
  }
  
  void Service() {}
}

void main()
{
  List <Super_market> r1=[];
  Super_market d1=Super_market();
  Super_market Temp;
  
  for(int i=0;i<3;i++)
  {
      Super_market d1=Super_market();
      d1.Productinput();
      r1.add(d1);
  }
  print("Username : Rishi");
  print("Password : 0109");
  int check=d1.Verify();
  

 if(check==1)
 {
  for(int i=0;i<r1.length;i++)
  {
     print("search for  item nmber   : ${ r1[i]._item_number}");
  }
    do
    {
      d1.Service();
      switch(d1._n)
      {
        case 1:print("Enter the item number for  details : ");
        int a=int.parse(stdin.readLineSync()!);
        for(int i=0;i<r1.length;i++)
        {
            if(a==r1[i]._item_number)
            {
              r1[i].Productoutput();
            }
        }
        case 2:print("Display of All product deatils  : ");
        for(int i=0;i<r1.length;i++)
        {
            for(int j=i+1;j<r1.length;j++)
            {
                if(r1[i]._item_number!>r1[j]._item_number)
                {
                  Temp=r1[i];
                  r1[i]=r1[j];
                  r1[j]=Temp;
                }
            }
        }
        for(int j=0;j<r1.length;j++)
        {
          r1[j].Productoutput();
        }
      }
    

    }while(d1._n!=0);
 }
 else 
 {
   print("login not Successfull: ");
    d1.Verify();
 }
}