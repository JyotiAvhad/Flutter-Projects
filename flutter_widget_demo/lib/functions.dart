int results( int a , int b, int c, int d, int e) {
  return a+b+c+d+e;
}

// Optional Functions in Dart
void func1(int a, [int b]) {
  print("a is $a");
  print("b is $b");
}

void func2(int a, {int b, int c}) {
  print("a is $a");
  print("b is $b");
  print("c is $c");
}

void func3(int a, {int b: 12}) {
  print("a is $a");
  print("b is $b");
}

// Lambda Function
void func4() => print("This is Lambda Function");

void main() {
  var result = results(10,20,30,40,50);
  print(result);
  
  print("Calling the function with Optional Parameters");
  func1(01);
  
  print("Calling the function with Optional Named Parameter");
  func2(01, c: 12);
  
  print("Calling the function with Default Parameter");
  func3(01);
  
  func4();
}