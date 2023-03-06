import 'userModel.dart';

class AirPlanesCompanies extends UsersModel{
  int? ID;
  String? airPlaneNames;
  String? companyNames;
  int? rangeOfSeats;
  late String flyTo;

  List<AirPlanesCompanies> AirPlanesCompaniesDB = [];
  List<dynamic> checkCompanies = [];
  AirPlanesCompanies({int? id, String? airPlaneNames, String? companyNames, String? adress,  String? status, String? email, int rangeOfSeats = 30 }){

    checkCompanies.add(id);
    checkCompanies.add(airPlaneNames);
    checkCompanies.add(companyNames);
    checkCompanies.add(adress);
    checkCompanies.add(status);
    checkCompanies.add(email);
    checkCompanies.add(rangeOfSeats);

    for (var item in checkCompanies) {
      bool isNull = false;
      if (item == null) {
        isNull = true;
        return;
      }
      isNull == true;
      break;  
    }
        this.ID = id;
        this.airPlaneNames = airPlaneNames;
        this.companyNames = companyNames;
        this.adress  = adress;
        this.email = email;
        this.rangeOfSeats = rangeOfSeats;
        this.status = status;
  }
}