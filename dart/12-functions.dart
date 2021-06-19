//function

main(List<String> args) {
  print(makeSquare(3.2));
  print(makeSquare(3));

  greet();

//anonymous function
  [1, 2, 3].forEach((element) => print(element));
  int i = printSomething();
  print(i);
  //named parameter(are optional by default) function everything else is positional parameter
  print(diff(num2: 9, num1: 6));
  //named parameter function and positional mixed
  print(diffMixed(1,num2: 9));
  //named parameter function and positional mixed but we haven't set default value for num2
  print(diffMixed(1));

}

//name an anonymous function

dynamic printSomething = () {
  print("hello");
  return 1;
};

//named parameter function

int diff({num1, num2}) => num1 - num2;

//defining defalut value for arguments in function
int diffMixed(int num1,{ int num2=0}) => num1 - num2;
//named parameter function and positional mixed assign default value when you want to use the argument

// int diffMixed(num1,{ num2}) => num1 - (num2 ?? 0);

//define postional parameter as optional
// int diffMixed(int num1,[int num2=0]) => num1 - num2;

//can return anything and arrow function

dynamic makeSquare(var num) => num * num;

void greet() {
  print("Hello");
}
