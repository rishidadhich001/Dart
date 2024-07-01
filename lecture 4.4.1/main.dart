import 'BankModal.dart';
import 'bank.dart';

void main()
{
  int a=1;
  List<Bank> bank=[];
  for(var b in bankData){
    Bank s1=Bank.fromMap(b);
    bank.add(s1);
  }
  for (var data in bank) {
    print("Bank Customer details : $a ");
    print(" name : ${data.name} ");
    print(" age : ${data.age} ");
    print(" email : ${data.email} ");
    print(" isActive : ${data.isActive} ");
    print(" balance : ${data.balance} ");
    print(" eyeColor : ${data.eyecolor} ");
    print(" gender : ${data.gender} ");
    print(" company : ${data.company} ");
    print(" phone : ${data.phone} ");
    print(" address : ${data.address} ");
   
    a++;
    print("\n");
  }
}