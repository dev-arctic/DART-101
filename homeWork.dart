void main(List<String> args) {
  const title = "Arctic Air lines";

  List<String> cities = ["Toronto", "Ottowa", "Nuuk", "Montreal"];

  print(title.toUpperCase());
  print("=================================="); 
  print("this week in cities");
  for (var i = 0; i < cities.length; i++) {
    print(cities[i]);
  }
  print("==========================================");
  Map<int, List<String>> airPlanesDB = {};
  // burada (map) airPlanesDB ye daha onceden hazirladigim cities verilerini ekledim
  for (var i = 0; i < cities.length; i++) {
    airPlanesDB[i] = [cities[i]];
  }

  for (var i = 0; i < airPlanesDB.length; i++) {
    print(
        "ID ${airPlanesDB.keys.elementAt(i)} number Airplane => ${airPlanesDB.values.elementAt(i)}");
  }

  print("If you want get ticket, clik on the button");

  bool resultGetTicket = getTicket(getTicket: true);

  if (resultGetTicket == true) {
    print("Please Select Cities");
    int j = 1;
    for (var item in airPlanesDB.values) {
      print("${j++} > ${item} ");
    }
  }
  var citiesID = selectCities(citiesID: 1);

  switch (citiesID) {
    case 0:
      print("Selected > ${cities[0]}");
      print("Airplane Iinformation :");
      message(number: citiesID);
      break;
    case 1:
      print("Selected ${cities[1]}");
      print("Airplane Iinformation :");
      message(number: citiesID);

      break;
    case 2:
      print("Selected ${cities[2]}");
      print("Airplane Iinformation :");
      message(number: citiesID);
      break;
    case 3:
      print("Selected ${cities[3]}");
      print("Airplane Iinformation :");
      message(number: citiesID);
      break;
    default:
  }
}

bool getTicket({required bool getTicket}) {
  return getTicket;
}

int selectCities({required int citiesID}) {
  return citiesID;
}

void message({required int number}) {
  Map<int, List<dynamic>> airPlanes = {
    1: ["Type : Airbus A350 XWB ", "Origin : Eupro ", "First Flight : 2013"],
    2: ["Type : Antonov An-148/An-158	","Originn : Ukraine ","First Flight : 2004"
    ],
    3: ["Type : Boeing 737	", "Origin : USA ", "First Flight : 1967"],
    4: ["Type : Boeing 767 ", "Origin : USA ", "First  Flight : 1981"]
  };

  switch (number) {
    case 0:
      print(airPlanes.values.elementAt(number));
      break;
    case 1:
      print(airPlanes.values.elementAt(number));
      break;
    case 2:
      print(airPlanes.values.elementAt(number));
      break;
    case 3:
      print(airPlanes.values.elementAt(number));
      break;
    default:
  }
}
