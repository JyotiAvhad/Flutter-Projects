// Implementation of bstract class

abstract class Neosoft {
  // abstract methods
  void empname();
  void empsalary();
  void myemployees() {
    
  }
}

class Employee extends Neosoft {
  
  @override
  void empname() {
    print("employee names");
  }
  
  @override
  void empsalary() {
    print("employee salary");
  }
}

void main() {
  Employee emp = new Employee();
  emp.empname();
  emp.empsalary();
}