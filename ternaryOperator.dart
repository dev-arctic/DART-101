void main(List<String> args) {

  // syantactic sugar.

  // ternary operatorler mesela bir if kosulu nu if(sicaklik >= 25){klimayi ac}else {acma} => bir if kosulu bu sekilde yaziliyor, ternary op. lar sayesinde bunu tek satirlik bir kod parcasi seklinde yaza biliyorum. 
      // soru isaretinin solu true donuyorsa calisir donmuyorsa sag taraf
  // sicaklik >= 25 ? klimayi ac : acma



  int? degree = 10; 

  if (degree > 29) {
    print("kalimayi ac");
  }else {
    print("guzel acmana gerek yok");
  }


  // ternary ile.

  degree > 29 ? print("ac kanka") : print("acma");

  // 3 kosullu bir sekilde yapabilrimiyim.

  bool? isUser = false;
  int? number = 0;

  number == 0 ? isUser = false 
  : number == 1 ? isUser = true
   : isUser = null; 
 

  

  
}