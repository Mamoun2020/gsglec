class Location{
  late double lat;
  late double lon;

  // from json make it as name constructor
Location.fromMap(Map<String,dynamic> data){
  lat = data['lat'];
  lon = data['lon'];
}
Map<String,dynamic> toMap(){
  Map<String,dynamic> data = Map<String,dynamic>();
    data['lat'] = lat;
    data['lon']=lon;
  return data;
}
}