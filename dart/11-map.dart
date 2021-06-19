//Collection
main(List<String> args) {
//Map(key,value pair)

  var jsObj = {'key': 'value', 1: 'one', 'one': 1};

  print(jsObj);
  print(jsObj[1]);
  print(jsObj['one']);
  print(jsObj['key']);
  var key = 'key';
  print(jsObj[key]);

  //definig empty map

  var gifts = Map();
  gifts['sintu'] = 'time';
  print(gifts);
}
