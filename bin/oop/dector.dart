import 'mixin.dart';
import 'person.dart';

class Doctor extends Person with Reading{
  @override
  read(String message) {
    // TODO: implement read
    return super.read(message);
  }
}