//Collection
main(List<String> args) {
//List
  List nList = ['Jack', 'Jhon', 1];
  print(nList[0]);
  print(nList.length);

  var items = ["Jack", 1];
  print(items[1]);

  List<String> names = ["Sintu", "Jack"];
  names.forEach((element) {
    print(element);
  });

  names[1] = "mark";

  List<int> numbeFixedList = const []; //will fix
  // numbeFixedList[0] = 10;//error
  print(numbeFixedList);

  //copying
  List items_copy = items; //refrence assignment
  items_copy[0] = "Jhon";
  print(items_copy);
  print(items);
  //real copy
  List items_real_copy = [...items]; //using spread operator
  items_real_copy[0] = "Charlie";
  print(items_real_copy);
  print(items);
}
