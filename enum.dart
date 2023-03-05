void main(List<String> args) {
  // enum siniflandirma. 
  // merkezi bir noktadan sabit verilerimiz varsa bu sekilde kontrol saglamak icin cekebilrim.

  Days day;

  String day2;
  day2 = Days.Monday.name.toString();
  print(day2);

  day = Days.Friday;
  switch (day) {
    case Days.Friday:
      print('fuck you');
      break;
    case Days.Sunday:
      print("fuck off");
      break;
    default:
  }

  print(day.name);
}

enum Days{
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}