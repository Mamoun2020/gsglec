import 'location.dart';

class Department{
  late String name;
  late String city;
  late String company;
  // object form class Location
  late Location location;

  Department.fromMap(Map<String, dynamic> data) {
    name = data['name'];
    city = data['city'];
    company = data['company'];
    if(data['location'] != null) {
      location = Location.fromMap(data['location']);
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['city'] = city;
    data['company'] = company;
    if (location != null) {
      data['location'] = location.toMap();
    }
    return data;
  }
}