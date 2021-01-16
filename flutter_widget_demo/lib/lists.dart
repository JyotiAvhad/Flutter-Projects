// List in Dart: List is collection of elements on basis of index value

// 2 Types of List: Fixed Length List and Dynamic/Growthable List

// Fixed Length List
// void main() {
//   var data = new List(3);
//   data[0] = 'Neosoft';
//   data[1] = 'Technologies';
//   data[2] = 'India';
//   print(data);
//   print(data[2]);
// }

// Dynamic/Growthable List
void main() {
  var data = ['NeofSoft','Technologies'];
  print(data);
  data.add('India');
  print(data);
  
  // add multiple values to list
  data.addAll(['Bangalore','Mumbai','Pune']);
  print(data);
  
  // insert values at specific index
  data.insert(0,'Employee');
  print(data);
  
   // insert multiple values at specific index
  data.insertAll(0,['Employee','Team Lead']);
  print(data);
}
