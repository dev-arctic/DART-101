import 'class.dart';

void main(List<String> args) {

    customer c1 = customer();
    c1.status = null;


  print(c1.chekStatus(c1.status ?? 'is empty'));

}

abstract class UserModel {
  String? phoneNumber;
  String? email;
  String? status;

}

class customer extends UserModel{
  String? firstName;
  String? lastName;


}
extension checkUserStatus on UserModel {
  bool? chekStatus(String? status) {
    if (status == null) {
      status = 'is empty';
    }
    if (status.toUpperCase() == 'spu'.toUpperCase()) {
      return true;
    }else {
      return false;
    }
  }
}