void main(List<String> args) {

  int? number;
  int? number2;

  // dart bizden objelerimizi tanimisiz bir sekilde kullanmamizi istemez  ama biz "?" kullanarak herhangibir objeninm null donebilecegini soyleriz, ve oda bunu kabul eder. dart bizden kullanamdan once atama yapmaizi ister ama bu sekilde biz ona gelen degerin bosta gele bileceginide soyleriz
  print(number);
  // print(number2); hata verec bir kod. 




  List<String?> user = ["a",'as'];
  // sadece degiskenler degil butun objeler.


  // bir datadan gelen verilerin veya baska bir yerden null olabilmesine karsin ala bilecegimiz bazi kontorller.

    // 1 - sart kosullari.

    // 2 - cok guzelbir best practies var.  print( number2 ?? 3 ); ?? koyarak diyoruz ki soru isaretinin solu null sa sagi al degilse zaten number2'yi alacak. varsayilan bir deger vermis gibi oluypruz.
    
    // 3 - kullanilmasi cok ynalis olan bit yol ! koyma unlem unlem diyerek programi zorluyoruz diyoruz ki bu dolu ona bunu inandirioyruz. print(sum2(number2!));       
  
    // conditional acces => tek satilik bir operartor, ?. null degil ise properyi alir  nullsa null dondurur.
  
  print(number2);

  users? user1 = users("name", "lastName");

  user1.lastName = 'as';
  print(user1.name);

  List<int> asd = [1,2];

    
  int? ilkEleman(List<int>? listem) {
    // return listem !=  null ? listem.first :null;
    listem?.first;
     // ilk elemani verir first
  }  


  print(ilkEleman(asd));

}

class users {
  String? name;
  String? lastName;

  users(this.name , this.lastName){

  }
}

int sum2(int i) {

  return i = 1;
}

int? sum(int? i) {
  
      if(i != null)
      return i + 1; 
      else {
        i = 0;
        return i + 1;
      }

    // haliyle bu kod hata verecek, burada null gelebilecegini dair uyariyoruz o tama diyor ama biz daha sonradan bir toplama islemi yapmaasini soyluyoruz o da diyor ki bak sen bana null gele bilir diyorsun eger null gelerise ben nasil toplayayim. tam olarak olan bu, burada bir kontrol mekanizmasi olusturarak devam edebilirim

    // yani dart bizim onu kontol ettigimizi anliyor ben diyorum ki tamam null olursa bunu yap olamzsa bunu ypa o anliyor benim kontrol sagladigimi, dart zeki bir dil.

    // yani bunu her yerde kullana bilirim.


}