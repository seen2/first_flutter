import 'dart:io';

void main(List<String> args) {
  stdout.writeln("What is your name?"); //defined in import 'dart:io';
  String? name=stdin.readLineSync(); //defined in import 'dart:io';
  print("my name is $name"); //string interpolation

  //   inline comment
  /*
  Multipleline
  Block
  Comment
   */
  ///Documentaion
}