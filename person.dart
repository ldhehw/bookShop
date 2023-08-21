class Person {
  late String firstName;
  late String lastName;
  late int age;
  late Gender gender;
  late DateTime createAt;

  Person(
    this.firstName,
    this.lastName,
    this.age,
    this.gender,
  ) {
    this.createAt = DateTime.now();
  }

  fullName() {
    return "${this.firstName} ${this.lastName}";
  }
}

enum Gender { male, female }
