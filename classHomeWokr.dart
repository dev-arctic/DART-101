void main(List<String> args) {
  // ayni bir degisken olusturur gibi yapiyorum
  user user1 = user("kevin", 10, age: 20,city:"london");
  print(user1.name);
  user user2 = user('asd', 10, age: null, city: null);

  user user3 = user("asdasd", 1);

  // ana parametreleri alip opsiyonel parameterler verebiliriz. !!isempty


}

class user {
  late final String name; // late diyerek bu datanin daha sonra gelecegini soyluyoruz. bu datalarin baslangic degeri yok be olacagini bilmiyoruz, bu skilde vermeyi kabul etmiyor.
  late final int money;
  late final int? age;
  late final String? city; // burad final yapmamim sebebi bu veriyi vermeden cagira bilirler ama final deyince constrcutor icinde veerilmek zorunda.

  user(String name, int money, {int? age, String? city}){ // opsiyonel paramtere
    this.name = name;
    // this.name = name; bu sekilde ekelem yapmamiza izin vermiyor. biz verinin gelcegini soylersek bize inaniyor late.
    this.money = money;
    this.age = age;
    this.city = (city ?? 'ist') ; // ?? eger city gelmezse varsayilan olarak ist yap demek
  }

  // constructor => yapiciolsuturucu. 
}

class user2{
  final String name; // late vermek zorunda degiliz.
  final int money;
  final int age;
  final String city;

  late final String id;// private variables ismi " _ " ekle 

    user2(this.name,this.money,this.age,this.city ,{required this.id}){
      city ?? "ist";
    } // yine this diyerek direkt olarak siniftaki degerere atam yaptiriyorum. farkli bir kullanim
}



class Student {
  int? id;
  String? firstNmae;
  String? lastName;
  int? grade;
  String? status;


  // arrow function bool isEmptyId ==> bla bla yani paramtere alamiyorsa boyle bir return metodgu yapa bilirim.
  Student(String? firstNmae , String? lastName , int? grade) {
    this.firstNmae = firstNmae;
    this.lastName = lastName; // this buludnugu class'a karsilik gelir.
    this.grade = grade;
  }

}

// getter and setter => get cagiriildigind aset deger verildiginde 

// money = money == null ? : 0