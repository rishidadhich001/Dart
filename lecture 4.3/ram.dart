import 'dart:io';
class Car{
  late int model_no; 
  late String company_name,car_name;
  void cardetails()
  {
    stdout.write("enter model no:");
    model_no=int.parse(stdin.readLineSync()!);
    stdout.write("enter a company name:");
    company_name=stdin.readLineSync()!;
    stdout.write("enter a car name:");
    car_name=stdin.readLineSync()!;
  }
  void carfetch()
  {
    print("$model_no $company_name $car_name");
  }
}