void main(List<String> args) {
  // MAP, key ve value ile calisam bir sistem. key ve value sisteminde icine bool,int,list vs. gibi veri turlerini ekliye biliyorum  

  Map<String,int> user = {'veli':20,"ahmet":10};
  // normal listelerde oldugu gibi user[] diyoruz fakat artik index numaralari yerine keylerini kullaniyoruz mesela ahmet ahemt keyini girince bize value 20 yi vericek
  print(user['veli']);

// // for ile kullanimda soyle bir farklilik var, map bir liste olmadigi icin kendi yapisi olduugu icin haliyle forlarda sadece lsite dondure bildigi icin mapi ditekt olarak donemez,
//   for (var item in user) {}

  // bunun icin  forlara ne donecegini soyleemem gerek 
  for (var item in user.keys) {
    // bu bize user keylerini yani ahmet, veli gibi string keyleri doner.
    print(item);
    print('${item} - ${user[item ]}');
  } 
  // for (var i = 0; i < user.length; i++) {
  //     print(user[i]); // users i leri olmadigi icin ynai 0 - 1 - 2 diye bir key olamdigi icin bize null donuyor.
  // }
  for (var i = 0; i < user.length; i++) {
    print(user.keys.elementAt(i) + '${user.values.elementAt(i)}'); // elementAt diyerek sadece key yada value cagiriyorum.  
  }

  Map<String,List<int>> userDB = {
    "Ahmet":[100,200,300],
  };
  userDB['veli'] = [100,200,300]; //  bu sekildede add edebilirim.
  userDB['kevin'] = [100,200,300]; 

     for (var keys in userDB.keys) {
       // burada keyleri aliyorum, dolasiyorum.
        // for burada ilk degere geliyor sonra assagi iniyor
       for (var values in userDB[keys]!) {
        // buradaki for ilke degere geliyor kod varsa asagi iniyor 
          // burada userdb yani valueslari dondugumuz userDB  nin degerlerini yukarida aldigimiz keyler ile sagliyorum.  
          print(values);
       }
     }


  for (var name in userDB.keys) {
    int result = 0;
    for (var money in userDB[name]!) {
      result += money;
    }
    print("Sayin $name  Toplam bakiyeniz ${result}");
  }

}