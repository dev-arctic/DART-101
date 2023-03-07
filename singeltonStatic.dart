void main(List<String> args) {
  // Product p1 = Product();
  // Product p2 = Product();

  // print(p1.money); 

  print(Product.money); // bu instance sonsuza kader bellekte kalir.
  Product.calculate(5);
  print(Product.money);
}
// mesela user class'ini kullanarak product yapmak isityoerum
class User {
  late String name;
  // late String lastName;
  User(this.name);
      // consturctorlarida ovveride edebilirim

  @override
  User.veli([this.name = "veli"]); // [] => default parametre.

  //factory constructor.
  factory User.factoryConstructor(User user){
    return User(user.name);
  }
  
}

class ProductConfig {
  // singelton bir sinif sadece bir yapi vardir artik bu siniftan baska bir instance olusturulamaz
  
} 

class Product {
  static int money = 10; // normalde buna erismek icin yeni bir instance olsutumam gerek bunu fonksiyonlar icinde kullana bilriim bunu const ve final ile kullanirsa kdha korumali olur.



  static void calculate(int getMoney) {
    money += getMoney; 
  }
}