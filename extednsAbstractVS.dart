void main(List<String> args) {

  sum sum1 = sum(number1: null, number2: 1);
  print(sum1.sumNumbers());


  companyUser companyUser1 = companyUser();
  companyUser1.name = 'kevin';

  specialUser specialUser1 = specialUser();

  specialUser1.specialUserID = 1;
  
  companyUser1.sayName(companyUser1);

}

abstract class AUser {

  late String? name;
  late String? lastName;
  late String? phoneNumber;
  void sayName(companyUser companyUser) {
    print("Hosgelniz ${companyUser.name}" );
  }

}


class companyUser extends AUser { 

  int? companyID;

}

class customerUser extends AUser {
  int? customerUserID;
}
class specialUser extends AUser {
  
  int? specialUserID;
}

class sum {
  int? number1;
  int? number2;

  sum({int? number1, int? number2}) {
  this.number1 = number1;
  this.number2 = number2;
  }

  int? sumNumbers() {
    number1 == null ? number1 = 0 : number2 == null ? number2 = 0 : this.number1 = number1; this.number2 = number2;
    return this.number1! + this.number2!;
  }


  // implements ve extends 

  int? arrowFunctionsHowToMake(int? n1 , int? n2) => (n1! + n2!); 


}