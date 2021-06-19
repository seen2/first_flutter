class Rectangle {
  num _length, _breadth; //num is mix of int and double

  Rectangle(this._length, this._breadth);

//getter
  num get getLength => this._length;
  num get getBreadth => this._breadth;
//setter
  set setLength(num l) => this._length = l;
  set setBreadth(num b) => this._breadth = b;

  num calculateArea() => this._length * this._breadth;
}

main(List<String> args) {
  Rectangle r = Rectangle(10, 16.2);
  print(r.getBreadth);
  print(r.getLength);
  print(r.calculateArea());
  r.setBreadth = 27;
  print(r._breadth);
  print(r.calculateArea());

}
