//NULL aware operator (?.), (??), (??=)

main(List<String> args) {
  var count = 20;

//classic for loop
  for (var i = 0; i < count; i++) {
    print(i);
  }
//for in loop
  var arr = ["Abc", "Def", 'Xyz'];
  for (var item in arr) {
    print(item);
  }
  //don't works
  // for (var char in "String") {
  //   print(char);
  // }

  //higer order function loop
  arr.forEach((item) => print(item)); //can use normal function
  [1, 2, 3, 9].forEach(printNum);

  //while loop

  while (count > 10) {
    print(count);
    count--;
  }
//do while
  do {
    if (count == 16) break;
    print(count);
    count--;
  } while (count > 10);
}

//function
void printNum(num) {
  print(num);
}
