import 'dart:svg';

void main(List<String> args) {
  int age = 10;

  if (age < 18) {
    print("giris yasak");
  }else {
    print("Hosgeldiniz");
  }

  int number = 10;

// switchler genelde duruma bagli olaylarda kullanmaya ozen goster bilirim.
  switch (number) {
    case 10:
      print("tebrikler");
      break;
    case 20:
      print("neredeyse tebrikler");
      break;
    default:
  }
}