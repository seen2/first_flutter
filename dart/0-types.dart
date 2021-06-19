//import package
import 'dart:core'; //in this case this is auto imported

/*
BASIC TYPES IN DART (Everything is object even null is object)
int
double
String
bool
dynamic
default value for any type is null==>error  
 */

void main(List<String> args) {
//----------String----------
  var firstName = "Sintu"; //type intference (almost dynamic type)
  const PI_double = 3.14; //It can't be  changed further
  print(PI_double);
  const constString = "Sun rise in east"; //It can't be  changed further
  print(constString);
  //simillar const for any type
  String lastName = "T"; // static type
  print(firstName + "  " + lastName);
  // firstName=1; ==>Error

// ---------int-------------
  int num1 = 1, num2 = 3;
  // int undeclared=null;
  print(num1 + num2);
  // print(undeclared);

// ---------double----------
  double num3 = 3.2, num4 = 4.7;
  print("sum of double num3 and num4= $num3+$num4");

// ---------bool------------
  bool flag = true, boolean = false;
  print("flag is $flag and boolean is $boolean");

// ---------dynamic---------
  dynamic dynamicFlag = true;
  print(dynamicFlag);
  dynamicFlag = "String value";
  print(dynamicFlag);
  dynamicFlag = null;
  print(dynamicFlag);
}
