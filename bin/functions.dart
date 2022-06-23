//generic function
typedef Name(String name);
// defining fullNamed function to use it in typedef to pass value
  fullName(String fullName){
    print(fullName);
  }
//enumeration data type
enum UserType {admin,client,seller}
void main(){
  // call generic (typedef) function
  Name youName = fullName;
  youName('mamoun');
  /*
  now,
  * there are 4 type of parameter in dart to pass value to functions
  * 1. Positional optional 2. Named optional
  * */
  //1.
  // String yourInfo(String name,[int age=22]){
  //   return name +'\n$age';
  // }
  // to call it yourInfo('mamoun',25) or yourInfo('mamoun')

  //2.
  // String yourInfo(String name,{int age=22}){
  //   return name +'\n$age';
  // }
  //or
  // String yourInfo(String name,{required int age}){
  //   return name +'\n$age';
  // }
  // to call it yourInfo('mamoun',age:22)

  //so signe
  /*
  * 1. return type
  * 2. function name
  * 3. parameters
  * 4. implementation
  * */
  // to make a check user from select option from enum data type
  checkUser(UserType user){
    if(user == UserType.admin){
        print('hello,admin');
    }else if (user == UserType.client){
        print('hello,admin');
    }else{
          print('hello,admin');
    }
  }
  // print hello admin
  checkUser(UserType.admin);

  // there are lambda function to make return in one statement
  // int sum(int i, int y) => i +y;

  // example for type of functions parameter
  // int Multi(int x,[int y]){
  //   return x * y;
  // }
  // null safety problem and we can solve it
  // first solution
  // int Multi(int x,[int y = 1]){
  //   return x * y;
  // }
  //second solution
  // int Multi(int x,[int? y]){
  //   return x * (y ?? 1);
  // }
  //third solution
  int multi([int x = 5,int? y]){
    if(y == null){
      return x * 1;
    }else{
      return x * y;
    }
  }
}