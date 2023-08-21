import 'person.dart';

class Admin extends Person {
  Admin(
    String firstName,
    String lastName,
    Gender gender,
    int age,
  ) : super(firstName, lastName, age, gender);
}
