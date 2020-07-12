class User {
  final String name;
  final DateTime birthDate;
  final List<String> skills;

  User(this.name, this.birthDate, this.skills);

  User copyWith({List<String> skills}) {
    return User(
      name,
      birthDate,
      skills,
    );
  }
}
