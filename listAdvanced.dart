void main(List<String> args) {
  
  final CarModel carModel = CarModel(category: carsModel.toyota, name: "Kevin", money: 10, IsSecondHand: false);

  final carItems = [
    CarModel(category: carsModel.toyota, name: "Kevin", money: 10, IsSecondHand: false),
    CarModel(category: carsModel.toyota, name: "Kevin", money: 10),
    CarModel(category: carsModel.bmw, name: "Kevin", money: 10, IsSecondHand: false),
    CarModel(category: carsModel.yamaha, name: "Kevin", money: 10),
    CarModel(category: carsModel.toyota, name: "Kevin", money: 10, IsSecondHand: false),
  ];
  // any where contais bunlari gezerken for yerine 
  // any varmi
    final result = carItems.where((element) => element.IsSecondHand == false).length; //where  true olanlari bize dondurecek
    print(result);

    // mesela yen ibir araba geldi eger ismi ayni ise yazdir mesela.

    final isHaveCar = carItems.contains(carModel.category);
    if (isHaveCar == true) {
      print("object");
      
    }else {
      print("adas");
    }


  // try cath yapisi 
  try {
    // burda ilk olayin giresin 
  } catch (e) {
    
    
  } finally {
    // son kararini ver 
  }
}
class CarModel {
  final carsModel category;
  final String name;
  final double money;
  String? city;
  bool IsSecondHand;
    CarModel ({
      required this.category,
      required this.name,
      required this.money,
      this.city,
      this.IsSecondHand = true
    });

}

enum carsModel { // iste enum bu tur durumlar ici nkullanila bilirim.
bmw,
yamaha,
toyota
}
/// join , map , singleWhere,indexOff-add-sort,expand, compareTo,remove,remoeve where