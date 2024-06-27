import 'dart:io';

class Train{
  late int _Train_Number,_n;
  late String _Train_name,_Train_time;
  late String _source,_designation;

  void set()
  {
    stdout.write("\n\n enter the detail of Train:\n");
    stdout.write("enter the Train Number:");
    _Train_Number=int.parse(stdin.readLineSync()!);
    stdout.write("enter the Train Name:");
    _Train_name=stdin.readLineSync()!;
    stdout.write("enter the Train Time:");
    _Train_time=stdin.readLineSync()!;
    stdout.write("enter the Train source:");
    _source=stdin.readLineSync()!;
    stdout.write("enter the Train designation:");
    _designation=stdin.readLineSync()!;
  }
  void get()
  {
    print("Train Number:${_Train_Number}\n");
    print("Train Name:${_Train_name}\n");
    print("Train Time:${_Train_time}\n");
    print("Train Source:${_source}\n");
    print("Train designation:${_designation}\n");
  }
  void choice()
  {
    stdout.write("1 for all train records:\n");
    stdout.write("2 for enter train number to find specific train:\n");
    stdout.write("3 for Exit: \n");  
    stdout.write("enter your choice: \n");
    _n=int.parse(stdin.readLineSync()!);  
  }
}
  void main()
  {
    List<Train> r1=[];
    Train s1=Train();
    for(int i=0;i<3;i++)
    {
      Train s1=Train();
      s1.set();
      r1.add(s1);
    }
    do{
    for(int i=0;i<r1.length;i++)
    {
      stdout.write("train number: ${r1[i]._Train_Number}\n");
    }
    s1.choice();
    switch(s1._n)
    {
      case 1: for (int i=0;i<r1.length;i++){
        r1[i].get();
      }
      break;
      case 2: 
      stdout.write("enter the train number:\n");
      int a =int.parse(stdin.readLineSync()!);
      for(int i=0;i<r1.length;i++)
      {
        if(a==r1[i]._Train_Number)
            {
              r1[i].get();
              break;
              a=0;
            }
      }
        break;
        case 3:print("you are Exit : ");  
    }
    }while(s1._n!=0);
  }

