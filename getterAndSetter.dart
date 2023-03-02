void main(List<String> args) {
  sumOrDiv sum = sumOrDiv(null, null);
  sum.sum();  

  sum.addUser("firstName", "lastName");
  }

class sumOrDiv {

  late int? number1;
  late int? number2;

  

  sumOrDiv(int? number1, int? number2) {
    this.number1 = number1;
    this.number2 = number2;
  }

  void sum(){
    
    if(number1 == null && number2 == null){
      number1 = 0;
      number2 = 0;
      print(number1! + number2!);
    }
    
    if (number1 == null) {
      number1 = 0;
     print(number1! + number2!);

    }else if (number2 == null) {
      number2 = 0;
     print(number1! + number2!);
    }
    else {
      print(number1! + number2!);
    }
  }

  void addUser(String firstName, String lastName ){
    if (firstName == null && lastName == null) {
      return;
    }else {
      print("Added User : $firstName  $lastName ");
    }

  }

  
}