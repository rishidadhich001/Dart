import 'dart:io';

void main()
{
  List l1=[[1,2,3],[4,5,6],[7,8,9]];
  
  int x = l1.length;
  for(int i=0;i<x;i++)
  {
    for(int j=0;j<x;j++)
    {
        stdout.write("${l1[i][j]} ");
    }
    print("  ");
  }
  int r ;
  do
  {

    stdout.write("\nEnter 1 Sum_of_All_Element : \n");
    stdout.write("Enter 2 Sum_of_Specific_Row : \n");
    stdout.write("Enter 3 Sum_of_Specific_Colum : \n");
    stdout.write("Enter 4 Sum_of_Diagonal_Element : \n");
    stdout.write("Enter 5 Sum_of_Antidiagonal_Element : \n");
    stdout.write("Enter 0 for exit : \n");
    stdout.write("Enter you choice \n");
    r= int.parse(stdin.readLineSync()!);
  switch(r)
  {
    case 1:Sum(l1,x);
    break;
    case 2:SumofRow(l1,x);
    break;
    case 3:SumofColum(l1,x);
    break;
    case 4:SumofDiagonal(l1,x);
    break;
    case 5:SumofAntidiagonal(l1,x);
    break;
    default:stdout.write("Enter valid input \n");
  }
  }while(r!=0);

}

void Sum(List l1,int x)
{
  int sum=0,temp;
  for(int i=0;i<x;i++)
  {
    for(int j=0;j<x;j++)
    {
        temp=l1[i][j];
        sum = sum + temp;
    }
  }
  print(sum);
}
void SumofRow(List l1,int x)
{
dynamic sum=0;
  stdout.write("enter the value of row : ");
  int n=int.parse(stdin.readLineSync()!);
  if(n>=0 && n<x)
  {
      for(int j=0;j<n;j++)
    {
        sum+=l1[n][j];
        
    }
    stdout.write("\nsum of Row ${n} = $sum\n");
  
  }
  else
  {
    stdout.write("enter the valide input for row: ");
  }
    
}
void SumofColum(List l1,int x)
{
 stdout.write("enter the value of colum : ");
  int n=int.parse(stdin.readLineSync()!);

dynamic sum=0;
 if(n>=0 && n<x)
 {
  sum=0;
    for(int i=0;i<x;i++)
    {
      sum+=l1[i][n];
    }
     stdout.write("\nsum of colum ${n} = $sum\n");
 }
 else
 {
  stdout.write("enter the valide input for colum: ");
 }
    
  
}
void SumofDiagonal(List l1,int x)
{
  dynamic sum=0;
  for(int i=0;i<x;i++)
  {
    for(int j=0;j<x;j++)
    {
      if(i==j)
      {

        sum+=l1[i][j];
      }
    }
  }
  stdout.write("\nSum of diagonal : $sum");
}
void SumofAntidiagonal(List l1,int x)
{
dynamic sum=0,column=x-1;
  for(int i=0;i<x;i++)
  {
    sum+=l1[i][column];
    column--;
  }
  stdout.write("\nSum of Antidiagonal : $sum");
}