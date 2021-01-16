// class Neosoft {
//   String empnames;
//   int salary;
//   void employeeNames() {
//     print("$empnames and salary is $salary");
//   }
// //   Neosoft() {
// //     print("This is the Default Constructor");
// //   }
//   Neosoft({String name, int salary}) {
//     this.empnames = name;
//     this.salary = salary;
//     print("This is the paramterized constructor which has value as $empnames and salary as $salary");
//   }
// }

// void main() {
//   Neosoft nsObj = new Neosoft();
//   Neosoft nsObj = new Neosoft(salary: 5000,name: "SohanMohan");
//   nsObj.empnames = "Raju";
//   nsObj.employeeNames();
// }

class SuperNeosoft {
  SuperNeosoft(String name) {
    print("This is SuperNeosoft $name");
  }
  void superFunction() {
    print("Super Function");
  }
}

class ChildNeosoft extends SuperNeosoft{
  ChildNeosoft() : super("SohanMohan") {
    super.superFunction();
    print("This is ChildNeosoft");
  }
}

void main() {
  ChildNeosoft obj = new ChildNeosoft(); 
}