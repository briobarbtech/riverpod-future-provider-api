abstract class MyUser {
  MyUser({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;
}
