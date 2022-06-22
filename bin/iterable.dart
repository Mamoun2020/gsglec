//Tips: to see output of this file, select file (iterable) then right click to run
void main(){
  // List and map extends from iterable class
  List<String> maleStudent = ['omar','hassan','saeed'];
  List<String> femaleStudent = ['sara','hanan','farah'];
  // add all elements from two lists in one list like this
  List<String> allStudent = [...maleStudent,...femaleStudent];
  print(allStudent);

  // use some method in list add,addAll,insert and insertAll
  maleStudent.add('mohammed'); // add element in list
  maleStudent.addAll(['ahmed','mahmoud']); // add list of elements in list
  femaleStudent.insert(2, 'hala'); // add element in specific index[2] in list
  femaleStudent.insertAll(4, ['alla','mariam']); // add list of elements in specific index in list
  // print Lists to see after that
  print(maleStudent);
  print(femaleStudent);

  // Looping
  // to print elements of list, we have a lot of way:
  //for
  for(int i =0; i<allStudent.length;i++){
    print("index $i : "+allStudent[i]);
  }
  // use for in
  for(String name in allStudent){
    print("Student name is : "+name);
  }
  // use for each
  allStudent.forEach((element) {
    print('Student Name : $element');
  });
}