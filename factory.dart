void main(List<String> args) {
  
  ProductConfig.instance.apiKey;
}

class User {
  String name;
  String product; 
  User (this.name , this.product) {

  }
}

class product {
  late int id;
  late String name;

  product(this.id , this.name ) {

  }

  product.veli([this.name = 'veli']); // bir product var birde product veli var geriye deger dondurmek isitoyrsak basina factory yazmaliyim

  // @override
  // factory product.kevin(int id) {
  //    this.id = id;
  // }

  // biz construclari override ede biliyorduk.
}


class ProductConfig {

  static final instance = ProductConfig._('a');
  final String apiKey; 

  ProductConfig._(this.apiKey); // boyle diyerek sadece bu siniftan turuyenler gore bilir. bu siniftan tuuryenler.
  // bu classdan sadecee bir tane olsun istiyorum newlenmesin istiyorum singelotn sinif yapmam gerek.
  
}