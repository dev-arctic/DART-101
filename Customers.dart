class Customer {
  late int? id;
  String FirstName;
  String LastName;
  String phoneNumber;
  String IdentityCardNumber;
  String city;
  String eMail;
  double balance;

  int? privateVariables;

  Customer(this.FirstName,this.LastName,this.phoneNumber,this.IdentityCardNumber,this.balance,this.city,this.eMail,{required this.id}){
    if (this.id == null) {
      this.id = 0;
    }
  }



}