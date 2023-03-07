void main(List<String> args) {
  
  _User user1 = _User('Kevin');
  user1.age = 20;
  if ((user1.age ?? 0) < 18) {
    // parantez icindeki yer guzel bir ternary yaklasimi user1.age ?? null mu true false alir true ise sag calisir flase ise deger ayni kalir.
  }
  // bir olay  daha var is eventi, yani user1.age int mi diye soruguuyor yine true false olayi vs.
  if (user1.age is int) { // is! is not
    if (user1.age! < 18) { // mesela burada vsc anlamiyor algoritmayi ama biz eminiz user1.age int yani geciyorsa orayi, ! bunu koydum yani dedim ki gercekten bu dolu birsey int ya bu diyorum.
      print("ufaklik");
      user1.uptadeMoneyWithString('TR');
    }else {
      user1.uptadeMoneyWithNumber(10);
    }
  }

  user1.age is int ? user1.age.toString: print((user1.moneyType as String));


  _User user2 = _User("kevin");
  _User user3 = _User("tommy");
  user2.age = 20;
  user3.age = 23;

  int number1 = 1;
  int number2 = 2;

  print(number1 == number2);
  print(user2 + user3); // ilk verdiigmiz this.age


  // ' emin oldugunuz verilerden force edebilrim yani ! bunu kullana bilirim'

  //cascade notation birden fazla nesneyi degerleri ile islem ypapa bilrim

  user1
    ..id += 2
    ..name = "lucas";
}


class _User {
  // siniflarimizida private yapa biliyorum.
  String name;
  late int id;
  int? age; // burda ? isareti age zorunlu bir alan degil constructora vermedimonu o da kizdi bana e ozaman ya bu gelmez se tanimsiz olarak kalir dedi bende dedim ki tamam sunu al ? unu aldi haa tamam dedi benim kim oldugum belli degil ben herseye varim ok dedi. o yuzden kizamyi birakti. 

  int operator +(_User user) {
    if (age == null) {
      age = 0;
    }else if(user.age == null) {
      user.age = 0;
    }
     
     return this.age! + user.age!;
    
  }
  // iki veri tuurnunde karislaya bilcegi alogritmalarda bunu kullana bilriim dynamic.
  dynamic moneyType;
  
  _User(this.name) { // constructor ile zorunlu olan filedlari vermesine zorluyoruz, o yuzden hata vermiyor cunku gelecginibiliyor.

  }

  void uptadeMoneyWithString(String data) {
    moneyType = data;
  }
  void uptadeMoneyWithNumber(int number) {
    moneyType = number;
  }

  // override etmek methodlai ozellesitiryoruz var olan bir methodu. 

  bool operator == (Object userId) { // burada objct olarak vereme gerekiyormuss.
      return userId is _User && userId.id == this.id; // kendin anla sonra,
  }
}

// sadece methodla islemi yapip geri donduru.
mixin UserMixin {
  void sayHiWithName(); // boyle bos birakip baska kullanan kisi bunu doldurua bilri with edilen sinifarda 
  // wtih nedir birlikte kullanmaya zorunlu tutuyor.  yani mixin gibi yerlerde sadece islem yap dondur gibi bir islerde kullanulir.

  void calculateMoney(int age) {
    print(age);
  }
}

// how to create custom operator ?
  