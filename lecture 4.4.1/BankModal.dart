class Bank
{
  int? age;
  String? name,gender,eyecolor,company,email,phone,address,balance;
  bool? isActive;
  Bank({required this.name,required this.email,required this.age,required this.isActive,required this.balance,required this.gender,required this.eyecolor,required this.company,required this.phone,required this.address});
  factory Bank.fromMap(Map r1)
  {
    return Bank(name: r1['name'], email: r1['email'], age: r1['age'], isActive: r1['isActive'], balance: r1['balance'], gender: r1['gender'], eyecolor: r1['eyecolor'], company: r1['company'], phone: r1['phone'], address: r1['address']);
  }

}