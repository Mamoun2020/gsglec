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
  // print maleStudent list name by name and between name put /
  String users = "";
  maleStudent.forEach((element) { 
    users += element;
    if(element != maleStudent.last){
      users += "/";
  }
  });
  print(users);
  // make first letter in element in list as uppercase
  List name = ['ahmed','mohammed'];
  List upperName = [];
  if(name.isEmpty){
    print('no process is applied');
  }else{
    upperName = name.map((element) {
      if(element.length >= 4){
        return element[0].toUpperCase() + element.substring(1);
      }
    }).toList();
  }
  print(upperName);
  // convert a third name to upperCase from mamoun kamal abusalah to Mamoun K. Abusalah
  
  // we need to 2 function
  //to make first name and last name, first character upperCase
  String capitalizeFirstLetter(String name){
    return name[0].toUpperCase() + name.substring(1);
  }
  // to make a middle name like K.
  String formatMiddleName(String mid){
    return ' '+mid[0].toUpperCase()+'. ';
  }
  String? formatFullName(Function fun1,Function fun2,String fullName){
    List<String> name = fullName.split(' ');
    if(name.length !=3){
      return 'name must be 3 words';
    }else{
    String firstName = fun1(name[0]);
    String middleName = fun2(name[1]);
    String lastName = fun1(name[2]);
    return firstName + middleName + lastName;
  }
  }
  // call this function and print a new format name
  print(formatFullName(capitalizeFirstLetter,formatMiddleName, 'mamoun kamal abusalah'));

  //go to map (like json format file) 3 class/level (Data,Department,Location)
  Map<String, dynamic> data ={
    "data":{
      "name":"omar",
      "age":23,
      "salary":1200,
      "isMale":1,
      "mobile":0592156145,
      "sons":["ahmed","nasser","khaled"],
      "department":{
        "name":"IT",
        "city":"Gaza",
        "company":"amazon",
        "location":{
          "lat":32.55,"lon":23.54
        }
      }
    }
  };
  print("$data");
}
