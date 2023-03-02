class hotel{ 
  late String companyName;
  late String eMail;
  late String phoneNumber;
  late int totalRoom;
  late int? id;
  hotel(String companyName, String eMail, String phoneNumber,{required this.id , int totalRoom = 0}) {
    this.companyName = companyName;
    this.eMail = eMail;
    this.phoneNumber = phoneNumber;
    if (this.id == null) {
      this.id = 0;
    }
    

  }

}