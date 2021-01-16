void main() {
  
  int data = 10;
  
  if(data > 3) {
    print("Condtion is true");
  }
  else if(data  == 10){
    print("the value matches");
  }
  else {
    print("Condtion does not match");
  }
  
  
  switch(data) {
    case 2:  {
      print(" Data value is 2");
  }break;
  
    case 4: {
      print(" Data value is 4");
    }break;
      
    case 10: {
      print(" Data value is 10");
    }break;
      
    default: {
      print(" This is Default Block");
    }break;
}
}