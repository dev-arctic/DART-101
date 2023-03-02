void main(List<String> args) {
  // gettter ve setter.
  // dart biz yapmasak bile arka tarafta bu isi kendisi hallediyor. fakat olusuturulan objeler private seklinde ise yine kendimi get ve est methodlarini olusuturmamiz gerekecektir.
  Student student1 = Student();

  student1.name = "asd";

    print(student1.name);

    print(student1.getStatus);

}

class Student {
  late String? name;
  late int? _grade;



  set grade(int? grade) {
    grade == null ? grade = 10 : _grade = grade;  
  }

  // set status(int? grade) {
  //   if (grade == null) {
  //     print("puan gir ");
  //     return;
  //   }
  //   this._grade = grade;
  // }

  int? get getStatus {
    return this._grade;
  }
}