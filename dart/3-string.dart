void main(List<String> args) {
  String v1 = "It is double quoted string";
  String v2 = 'It is single quoted string';
  String v3 = 'It\'s using apostrophie';
  String v4 = "It's also another way apostrophie";
  print(v1);
  print(v2);
  print(v3);
  print(v4);

  //raw string: string with special charactor
  var s = r"It usin \n as special charactor";
  print(s);

//interpolating values in the string
  int age = 23;
  String statement = "my age is $age";
  print(statement);
  //multiline string
  String s1 = """ 
  Hello world this is a multiline string
  you can see I am changing the line here 
  and again here.
  """;
  print(s1);
  s1 = ''' 
  Hello world this is a multiline string
  you can see I am changing the line here 
  and again here but with single quote.
  ''';
  print(s1);

}
