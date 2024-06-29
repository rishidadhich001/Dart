import 'dart:io';

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
      stdout.write("train number: ${r1[i].Train_Number}\n");
    }
    s1.choice();
    switch(s1.n)
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
        if(a==r1[i].Train_Number)
            {
              r1[i].get();
              break;
              a=0;
            }
      }
        break;
        case 3:print("you are Exit : ");  
    }
    }while(s1.n!=0);
  }

