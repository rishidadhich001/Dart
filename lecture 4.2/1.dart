import 'dart:io';

void main()
{
      List <Employee> employee=[];
    for(int i=0;i<5;i++)
    {
        Employee e1=Employee();
        employee.add(e1);
    }
    for(int i=0;i<5;i++)
    {
        stdout.write("Enter id: ");
        employee[i].id=int.parse(stdin.readLineSync()!);

        stdout.write("Enter name:");
        employee[i].name=stdin.readLineSync()!;

        stdout.write("Enter salary:");
        employee[i].salary=double.parse(stdin.readLineSync()!);

        stdout.write("Enter destignation:");
        employee[i].destignation=stdin.readLineSync()!;
        print("\n");
    }
    for(int i=0;i<5;i++)
    {
      print("\n ${employee[i].id} ${employee[i].name} ${employee[i].salary} ${employee[i].destignation}");
    }
}
