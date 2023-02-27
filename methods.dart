void main(List<String> args) {
  sum(enterFirstNumber: 10,enterSecondNumber: 10);
}
void sayHi() {
  print('hi how ru');
}
void sayHi2(String name) {
  print("$name > Welcome");
}

String sayHi3(String userName) {
  return userName; // gelen veriyi bir obje sekilinde eline almak icin daha sonrada n bir yerde kullaana bilirim. 
}
// opsiyonel durumu varsa bu sekilke {icinde opsiyonel parametre verebilriisniz buna default degerde verebilirim.} 
int sum2(int number1 , {int number2 = 0}){
  return number1 + number2;
}
// dart'da herhangi bir obenin ilk tnaimi null dir. o yuzden hep ilk bir deger atamamiz gerekli
int sum({required int enterFirstNumber , int enterSecondNumber = 0} ) {
  
  return enterFirstNumber + enterSecondNumber;
}