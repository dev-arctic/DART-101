import 'Customers.dart';
import 'hotels.dart';

void main(List<String> args) {
  
  List<Customer?> CustomerDB = [];
  Map<int?,List<hotel>> hotelDB = {};
  Customer customer1 = Customer("kevin", 'louf', "11111", "1111111111111", 150, "paris", "kevin@gmail.com", id: 1);
  Customer customer2 = Customer("edward", 'louf', "1111111", "1111111111", 100, "london", "edward@gmail.com", id: 2);
  Customer customer3 = Customer("angela", 'louf', "111111111", "111111111", 300, "kaliningrad", "angela@gmail.com", id: 3);
  Customer customer4 = Customer("nicky", 'louf', "1111111", "111111", 200, "london", "nicky@gmail.com", id: 4);

  hotel hotel1 = hotel("abcHotel",'abc@gmail,com',"12312312",totalRoom: 20,id: 1);
  hotel hotel2 = hotel("abcdHotel",'abcd@gmail,com',"12312313",totalRoom: 30,id: null);
  hotel hotel3 = hotel("abcfHotel",'abcf@gmail,com',"12312314",totalRoom: 50,id: 3);
  hotel hotel4 = hotel("abcgHotel",'abcg@gmail,com',"12312315",totalRoom: 60,id: 4);

  CustomerDB.add(customer1);
  CustomerDB.add(customer2);
  CustomerDB.add(customer3);
  CustomerDB.add(customer4);

  hotelDB[hotel1.id] = [hotel1];
  hotelDB[hotel2.id] = [hotel2];
  hotelDB[hotel3.id] = [hotel3];
  hotelDB[hotel4.id] = [hotel4];

  for (var item in hotelDB.keys) {
    if (item == null) {
      item = 0;
    }
    for (var element in hotelDB[item]!) {
      print(element.id);
    }
  }

  print("musteri gelir... ve bir oda sorar?");
  
  
}

