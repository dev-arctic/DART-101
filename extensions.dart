void main(List<String> args) {
  // extensions 
    Users user1 =  Users();
    Users user2 =  Users();
    user1.name = "ADMIN";
    user1.lastName = "asdsad";
    print(user1.returnName(getName: user1.name));
    user1.userLastName();

    user2.lastName = "asdasdasfasfasf";
    user2.userLastName();
    user1.userName();

  String name = "kevin";
  print(name.isAdminUser());

  print(user1.name.isAdminUser());
  }

class Users {
  String? name;
  String? lastName;

  String? returnName({String? getName}) {
     getName;
    return getName;
  } 
}

extension returnLastName on Users {
  // bu diyorki users classina uzanti sagla boyle bir uzanti bazi objeler function alamiyor icini bu sayde uzanit ekelye biliyoruz 

  void userLastName(){
    print(this.lastName);
  }
  void userName() {
    print(this.name);
  }
}

extension isAdmin on String? { // NULL olabilcegini belirterek butun instanclarada vermis oluyoruz
  bool isAdminUser() {
      // this diyerek stringgi belirmis oluyorum
      // == esit mi o kontrol ediyr
    return (this ?? "bos").toLowerCase() == 'admin'.toLowerCase();
  }
}
/// mesela bunlari int veya stringlere de verebilriim anladinmi, soyle 
