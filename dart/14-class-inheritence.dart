//class

class Vehicle {
  String model;
  int year;
  Vehicle(this.model, this.year) {
    print(this.model + ", " + this.year.toString());
  }
  void show() {
    print("model: " + this.model + ", year: " + this.year.toString());
  }
}

class Car extends Vehicle {
  double price;
  Car(String model, int year, this.price) : super(model, year);

  @override  //overrriding
  void show() {
    // ignore: todo
    // TODO: implement show
    super.show();
    print("Price: \$" + this.price.toString());
  }
}

main(List<String> args) {
  Car acord = Car("M101", 2014, 21223.25);
  acord.show();
}