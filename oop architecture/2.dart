import 'dart:io';

class Customer {
  late int cust_id;
  late double cust_contact;
  late String cust_name;
  late int pro_id;
  late String pro_name;
  late int pro_qty;
  late double pro_price;
  late int product;
  late int quintity;


  List pro = [];

  void set() {
    stdout.write("Enter customer id : ");
    cust_id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter name : ");
    cust_name = stdin.readLineSync()!;
    stdout.write("Enter customer contact : ");
    cust_contact = double.parse(stdin.readLineSync()!);
  }

  void productof()
  {
    
    int choise;
      
        

    print("Enter choice : ");
    print("Press 1 for Bakery products");
    print("Press 2 for Grocery");
    print("Press 3 for Diary products");
    print("Press 4 to exit");
    choise = int.parse(stdin.readLineSync()!);
     
  
  switch(choise)
  {
          case 1:
          print( " enter  1  bread ");
          print( " enter  2 cupecake ");
      

          stdout.write("Enter product : ");
         product = int.parse(stdin.readLineSync()!);
         stdout.write("Enter quintity : ");
         quintity = int.parse(stdin.readLineSync()!);

         switch(product)
         {
             case 1:
                print("\nBread added successfully...");
                pro_id =  1;
                pro_name = 'Bread';
                pro_qty = quintity;
                pro_price = quintity * 20.0;

                break;

              case 2:
              print("\ncapecake added successfully...");
                pro_id =  2;
                pro_name = 'capcake';
                pro_qty = quintity;
                pro_price = quintity * 20.0;
                break;
                default:
                print(" 1 , 2 for product ");
            
         }

         case 2:
        
          print( " enter  1  rise ");
          print( " enter  2  suger");
      

          stdout.write("Enter product : ");
         product = int.parse(stdin.readLineSync()!);
         stdout.write("Enter quintity : ");
         quintity = int.parse(stdin.readLineSync()!);

         switch(product)
         {
             case 1:
                print("\n rise added successfully...");
                pro_id =  3;
                pro_name = 'rise';
                pro_qty = quintity;
                pro_price = quintity *50 ;

                break;

              case 2:
              print("\n suger added successfully...");
                pro_id =  4;
                pro_name = 'suger';
                pro_qty = quintity;
                pro_price = quintity * 43;
                break;
                default:
                print(" 1 , 2 for product ");
            
         }

         case 3:
         print( " enter  1  curd ");
         print( " enter  2  milk");
      

          stdout.write("Enter product : ");
         product = int.parse(stdin.readLineSync()!);
         stdout.write("Enter quintity : ");
         quintity = int.parse(stdin.readLineSync()!);

         switch(product)
         {
             case 1:
                print("\n curd added successfully...");
                pro_id =  5;
                pro_name = 'curd';
                pro_qty = quintity;
                pro_price = quintity *31 ;

                break;

              case 2:
              print("\n milk added successfully...");
                pro_id =  6;
                pro_name = 'milk';
                pro_qty = quintity;
                pro_price = quintity * 45;
                add();
                break;
                default:
                print(" 1 , 2 for product ");
                

            
         }
         case 4:
           print(' exit');
         default :
         print("thank you for visit come again");



  }
  }
  void add(){
    print("Do you want to add more products...!");
    print("Press 1 for yes...");
    print("Press any digit to exit...!");
    int choice = int.parse(stdin.readLineSync()!);

    pro.add(
      {
        'pro_id' : pro_id,
        'pro_name' : pro_name,
        'pro_price' : pro_price,
        'pro_qty' : pro_qty,
      }
    );

    if(choice == 1)
    {
      custCart(pro_id: pro_id, pro_name: pro_name, pro_price: pro_price, pro_qty: pro_qty);
      productof();
    }
    else
    {
      custCart(pro_id: pro_id, pro_name: pro_name, pro_price: pro_price, pro_qty: pro_qty);
      print("Thank you for choosing...!");
    }
  }

    void custCart(
      { required pro_id, required String pro_name, required int pro_qty, required pro_price}) {
      print("Product : $pro_name");
      print("Product id : $pro_id");
      print("Quantity : $pro_qty");
      print("Price : $pro_price\n");
      if (pro_price! >= 500 && pro_price <= 1500) {
        pro_price = pro_price - pro_price / 10;
      } else if (pro_price >= 1500 && pro_price <= 3500) {
        pro_price = pro_price - pro_price / 20;
      } else if (pro_price >= 3500 && pro_price <= 6500) {
        pro_price = pro_price - pro_price / 25;
      } else if (pro_price > 6500) {
        pro_price = pro_price - pro_price / 30;
      }
  }

  void total()
  {
       
    print("\n costomer  products : $pro");
  
  }

  
}
void main()
{
   Customer c1 = Customer();
  List l1 = [];
  stdout.write("Enter the no. of customer : ");
  int size = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < size; i++) {
    c1.set();
    l1.add(c1);
  }
  for (int i = 0; i < size; i++) {
    c1.productof();
  }
  c1.total();
}