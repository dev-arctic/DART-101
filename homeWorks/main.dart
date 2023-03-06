import 'userModel.dart';
import 'customer.dart';
import 'compnaies.dart';

void main(List<String> args) {
  // biz hava limani sireketiyiz izimizde diger ucak firfmalarini barindiyiriyourz musteri sistmelerini biz yaarliyotuz, sonra ucaklar gelis igidler vs. bilerleri biz satiyoruz. hanig ucak nereden nerey gidiyor nerde kalkiyor kac koltuklu birinci ikinici sinif vs. bolumler olacak bunlari gosteriyoruz. diger bilgileride veriyoruz mesela fiyar gibi, bizimde adminlermimz vs. var cesit cesitsiniflar var meslea yetsii olan kisi sadece suna erise bilir gibi seyler vs. vs.
  // STADARTLARa gore ucak ayarlar musterilere.

  Customers customer1 = Customers(
      "112", "USA seatle", "leya@gmail.com", 'null', "hamson", 20, "standart");

  AirPlanesCompanies airPlanesCompanies1 = AirPlanesCompanies(
      adress: "London, manchester",
      airPlaneNames: "londonDC--1",
      companyNames: "London-airlines",
      email: "london-airlines@gmail.com",
      id: 00001,
      rangeOfSeats: 60,
      status: "ARP-3");

  airPlanesCompanies1.checkCompaniesStatus(airPlanesCompanies1.status,
      getName: airPlanesCompanies1.companyNames);
  print(customer1.isSpeacialUser(customer1.status));

  Map<int,String> asd = {}; 
    List<String> countriesDB = ['canada',"england","Iceland",'Scotland'];


    checkAirplane(flyToAdd(countriesDB,getId: 2),10);  
}

int flyToAdd(List<String> getFlyTo,{int? getId = 0}) {

  // ucaklarin id si ve nereye gittginin tutuldugu bir yer olacak nere gittgii baska bir yerden gelecek, mesela bir user geldi ingilitereye girmek isitiyor ingilitere ye giden ucaklar hangisi iske onlari oner.
    Map<int,String> whereFlyTo = {};

    int j = 0;

    for (var item in getFlyTo) {
      j == null ? j = 0 : j++; whereFlyTo[j] = item; 
      
    }
    if (getId == null || getId == 0) {
      getId = 1;
    }
    print(whereFlyTo);
    return getId;

}

void checkAirplane(int getId,int numberOFseat) {
    switch (getId) {
      case 1:
          print("London Airlines Iyi ucuslar diler koltuk numaraniz => $numberOFseat");
        break;
      case 2:
          print(" Iceland Airlines Iyi ucuslar diler koltuk numaraniz => $numberOFseat");
        break;
      case 3:
          print("France Airlines Iyi ucuslar diler koltuk numaraniz => $numberOFseat");
        break;
      case 4:
          print("USA Airlines Iyi ucuslar diler koltuk numaraniz => $numberOFseat");
        break;
      default:
    }
}

extension checkUserStatus on UsersModel? {
  bool? isSpeacialUser(String? getStatus) {
    if (getStatus == null) {
      getStatus = 'is empty';
    }
    if (getStatus.toUpperCase() == "spu".toUpperCase()) {
      return true;
    } else {
      return false;
    }
  }

  void checkCompaniesStatus(String? getStatus, {String? getName}) {
    bool isNull = false;
    if (getStatus == null) {
      getStatus = 'is a null filed';
      print(getStatus);
      return;
    } else {
      switch (getStatus) {
        case "ARP-1":
          print('EN Ust Duzey musteriler icin bir ucak => $getName');
          break;
        case "ARP-2":
          print('Ust Duzey musteriler icin bir ucak => $getName');
          break;
        case "ARP-3":
          print('ORTA Duzey musteriler icin bir ucak => $getName');
          break;
        case "ARP-4":
          print('STANDART musteriler icin bir ucak => $getName');
          break;
        default:
      }
    }
  }
}
