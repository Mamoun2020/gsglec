void main(List<String> arguments) {
  print('Hello world!');

//data type

// int, double  abstract class extends from num class

// int numberInteger = 5;
// double numberFloating = 5.0;
  num numberInteger = 5;
// boolean data type and String
bool isCheck = true;

String name = 'Mamoun';
  print(name);
// concatenate between 2 String
  print(name + " Abu Salah");
// tab space
  print(name + "\tAbu Salah");
// new line
// print(name+"\nAbu Salah");

// now talk about a (collection) of data type (List,Set and Map)
List names = ['ahmed',5,5.0,true];
// Customize type of list know as (Generic type)
List<int> numbers = [5,4,5,3];
// the most differance between a list and set, no duplication in set
Set setName =  {'mamoun','mamoun'};
print('print setOfName without duplication : $setName');
// pair key and value store data use by map
Map person = {
  'name': 'Mamoun',
  'age' : 22,
  'GPA' : 90.0
};
// Generic type in Map
Map<String,dynamic> student ={
  'name': 'Mamoun',
  'age' : 22,
  'GPA' : 90.0
};

}

/*
* some tips when you need to make long a comment, you can use this /* */ and you can do it ( Ctrl +Shift +/ )
* and also when make comment from one line use // and you can do it (Ctrl + Shift + /)
 */

