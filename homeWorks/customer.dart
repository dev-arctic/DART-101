import 'userModel.dart';
class Customers extends UsersModel {
  int? age;

  List<dynamic> checkUsers = [];
  Customers(String? phoneNumber,String? adress,String? email, String? firstName, String? lastName,int? age,String status) {

    checkUsers.add(phoneNumber);
    checkUsers.add(adress);
    checkUsers.add(email);
    checkUsers.add(firstName);
    checkUsers.add(lastName);
    checkUsers.add(age);
    checkUsers.add(status);


    for (var item in checkUsers) {
      if (item == null) {
        print("lutefen bosluklari doldurunuz");
        return;
      }else {
        this.phoneNumber = phoneNumber;
        this.adress = adress;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.status = status;
      }
    }  

  }
}