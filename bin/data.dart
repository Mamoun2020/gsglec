// write a class model to this json map
/*
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
 */
// there are 3 levels in this map
import 'department.dart';

class Data{
  late String name;
  late int age;
  late int salary;
  late bool isMale;
  late int mobile;
  // list of string name sons
  late List<String> sons;
  //class department
  late Department department;

  Data.fromMap(Map<String, dynamic> data) {
    name = data['name'];
    age = data['age'];
    salary = data['salary'];
    isMale = data['isMale'];
    mobile = data['mobile'];
    sons = data['sons'].cast<String>();
    if(data['department'] != null) {
      department = Department.fromMap(data['department']);
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['age'] = age;
    data['salary'] = salary;
    data['isMale'] = isMale;
    data['mobile'] = mobile;
    data['sons'] = sons;
    if (department != null) {
      data['department'] = department.toMap();
    }
    return data;
  }
}