import 'dart:io';

void main(List<String> args) {
  
}


abstract class AUser {
  void sumMoney();
}

class Customer implements AUser{

  // burada customer money / 2 dememk isitiyorum mesela
  @override
  void sumMoney() {
    // TODO: implement sumMoney
  }
}


class Company implements AUser{
  @override
  void sumMoney() {
    // TODO: implement sumMoney
  }
  // buradaise / 5 olsun company oldugu icin yani anlayacagim implements edilmis bir abstract class var ve oradaki methodalrin ustune yaziyorum.
  // implement edilen claslar o abstract classin bire bir methodu alamak zorunda isterse usutune yaza bilir ama alacak. extend ettiigimizde oyle bir durum yoktur. yani net islemlerin oldugu durumlarda ama kendiiclerinde ayrildiginda kullana bilirim.
  

}

class superUser {

}



