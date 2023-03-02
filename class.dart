void main(List<String> args) {
  int? newMoney;

  // print(newMoney); // bu sekilde objenin ne oldugunudan emin olmadigimi soyluyorum hersey olabilirm null int vs.

  // print(newMoney! + 10); // obje tanimsiz olduug icin bir islemede girmiyor bunun en basit ama yanlis olan cozumu => ! nesnenin kessinlikle o nesnenin dolu gelecgini soyluyorum ve buna ianinyorum her kosulda yazilim. sonra hata aliyorz obenin konrtol edilmemesi durumda null exception hatasini alirim.
  if (newMoney == null) {
    newMoney = 10;
    print(newMoney + 10);
  }

  List<int?> userMoneys = [
    100,
    null,
    2
  ]; // normalde soru isaretini koymasakdik hata aliridim cunku biz yazilima int turunde bir liste hazirlyacagimiziz soyluyoruz,ama null bir tam sayi degil anlam ifade etmiyor. ama soru isareti ile birlikte ben diyorum ki bu listede emin olmadigim yani null degerlerde olabilir diyoruz, yine int ama min degilim dolumu bosmu.

  print(money(null));

  bool result = money(0) == null
      ? false
      : true; // bool alamk icin if else yapisina girmek yerine dartda kullanilan sort functionu kullana bilriim.
  // == null ? => null ise ilk yazacagim olsun false degilse ikinci true false : true sort if olarak geciyor. conditional express
  // bool result = money(0) == null ? false : true;
}

// methodu bu sekilde kullanirska yine ayni analamgeliyor. direkt olarak kendisi null dondure bilir.
int? controlMoney(int money) {}

int? money(int? money) {
  if (money == null || money == 0) {
    money = 10;
    return money + 5;
  } else {
    return money + 5;
  }
}

class user {
  late final String name; // late diyerek bu objelerin daha sonra tanimlanacagini belirtiyoruz.
  late final int money;
  late final int? age;  // yine vermeyebilri gibi bir durum varsa soru isareti kullana bilriim. 

  user(String name, int money, int age) {
    // burada construct ediyoruz , constructor sinfilarin yapici islemlerini yapar onlari initilaize eder.
    // this diyerek bu sinifi teblig etmis oluyorum. yani olusturulan bir nesneyi ilk kullanimna hazirlamasidir.
    this.name = name;
    this.money = money;
    this.age = age;
  }
}

// constructor // !!!!! verilmesi zorunlu olmayan constructor parametrelerinde opsiyone lmethod yapa bilirim istedigimim yeri  
