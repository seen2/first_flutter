// Exception handling


import 'dart:io';

int mustGreaterThanZero(int num1) {
  if (num1 <= 0) throw Exception("Value Must be greater than zero");
  return num1;
}

void letVerifyThevalue(var val) {
  var valueVerfication;
  try {
    valueVerfication = mustGreaterThanZero(val);
  } on StdinException {
    print("catching specific exception");
  } catch (e) {
    print(e);
  } finally {
    print(valueVerfication == null
        ? "The Rejected value is:" + val.toString()
        : "Verified");
  }
}

main(List<String> args) {
  letVerifyThevalue(0);
}
