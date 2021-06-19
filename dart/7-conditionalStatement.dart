//NULL aware operator (?.), (??), (??=)

main(List<String> args) {
  var age = 20;

//if else

  if (age < 18) {
    print("teenager");
  } else if (age >= 18 && age <= 30) {
    print("adult");
  } else {
    print("matured");
  }
//switch case
  switch (age) {
    case 18:
      print("Got adult");
      break;
    case 31:
      print("Got matured");
      break;
    default:
      print("Oops!!");
  }

  
}
