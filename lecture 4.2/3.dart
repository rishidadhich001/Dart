import 'dart:io';

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
     print("search for  item nmber   : ${ r1[i].item_number}");
  }
    do
    {
      d1.Service();
      switch(d1.n)
      {
        case 1:print("Enter the item number for  details : ");
        int a=int.parse(stdin.readLineSync()!);
        for(int i=0;i<r1.length;i++)
        {
            if(a==r1[i].item_number)
            {
              r1[i].Productoutput();
            }
        }
        case 2:print("Display of All product deatils  : ");
        for(int i=0;i<r1.length;i++)
        {
            for(int j=i+1;j<r1.length;j++)
            {
                if(r1[i].item_number!>r1[j].item_number)
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
    

    }while(d1.n!=0);
 }
 else 
 {
   print("login not Successfull: ");
    d1.Verify();
 }
}
