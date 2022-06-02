class UserModel {
  // Definimos los atributos de la clase Model
  final int id;
  final String email;
  final String firstname;
  final String lastname;
  final String avatar;

  // Definimos que variables son requisito para invocar esta clase
  UserModel(
      {required this.id,
      required this.email,
      required this.firstname,
      required this.lastname,
      required this.avatar});

  // Establecemos un método constructor factory que restringge la creación de objetos a uno
  // es decir le estamos diciendo que sobreescriba siempre la instancia de esta clase
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        email: json['email'],
        firstname: json['first_name'] ?? 'First Name',
        lastname: json['last_name'] ?? 'Last Name',
        avatar: json['avatar'] ??
            'https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=740');
  }
}
